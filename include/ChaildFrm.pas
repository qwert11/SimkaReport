unit ChaildFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, Menus, IBDatabase,
  DB, IBCustomDataSet, IBQuery, DBCtrls, ActnList, FIBDatabase,
{$IFDEF TESTMODE}
  TypInfo,
{$ENDIF}
  pFIBDatabase, FIBDataSet, pFIBDataSet, FIBQuery, fib, ComCtrls, 
  DBLookupEh, DBGridEhGrouping, GridsEh;

type
  TEditorSetState = (esEdit, esInsert, esDelete, esNone);

  TTextAlign = (taRight);

  TEditTextRight = class(TEdit)
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  end;

  TChaildForm = class(TForm)
    dbgrd1: TDBGrid;
    btn1: TBitBtn;
    btn2: TBitBtn;
    pnl1: TPanel;
    mm1: TMainMenu;
    File1: TMenuItem;
    Edit1: TMenuItem;
    Insert1: TMenuItem;
    Delete1: TMenuItem;
    btnSave: TButton;
    btnCancel: TButton;
    pm1: TPopupMenu;
    Edit2: TMenuItem;
    Insert2: TMenuItem;
    N1: TMenuItem;
    Delete2: TMenuItem;
    pfbdtst1: TpFIBDataSet;
    ds1: TDataSource;
    stat1: TStatusBar;
    actlst1: TActionList;
    actInsert: TAction;
    actEdit: TAction;
    actDelete: TAction;
    actSave: TAction;
    actClearAll: TAction;
    mniClearAll: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Insert1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject); virtual;
    procedure FormShow(Sender: TObject);
    procedure dbgrd1DblClick(Sender: TObject);
    procedure actSaveUpdate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actClearAllExecute(Sender: TObject);
    procedure actClearAllUpdate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbgrd1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure NullAllField;
  public
    { Public declarations }
    FEditorState: TEditorSetState;
    FCheckComponents: TList;
    FSelectTable: string;
  protected
    procedure QueryPrepare;
    procedure SetRightText(AEdit: TEdit);
  end;

var
  ChaildForm: TChaildForm;

implementation

uses MainFrm, DM_, CustomerFunctions;

const
  STATE_PNL_SBAR = 0;

  INFO_PNL_SBAR = 1;

{$R *.dfm}


{ TODO 2 -oAcrion -cUpdate : UPDATE для Edit, Insert, Delete }

procedure TChaildForm.FormCreate(Sender: TObject);
begin
  FEditorState := esNone;
  pfbdtst1.Open;
  FCheckComponents := TList.Create;
end;

procedure TChaildForm.Edit1Click(Sender: TObject);
begin
  if pfbdtst1.Eof then begin
    btnCancelClick(nil);
    Abort;
  end;
  FEditorState := esEdit;
  stat1.Panels[STATE_PNL_SBAR].Text := 'Edit';
end;

procedure TChaildForm.Insert1Click(Sender: TObject);
begin
  FEditorState := esInsert;
  stat1.Panels[STATE_PNL_SBAR].Text := 'Insert';
end;

// вызывает метод потомка потому что virtual
procedure TChaildForm.Delete1Click(Sender: TObject);
begin
  FEditorState := esNone;
  stat1.Panels[STATE_PNL_SBAR].Text := 'Delete';
  stat1.Refresh;
  if Application.MessageBox('Вы действительно хотите удалить запись?',
      'Удаление', MB_ICONQUESTION + MB_YESNO) = ID_YES then
    FEditorState := esDelete
  else begin
    btnCancelClick(nil);
    Exit;
  end;

  btnSaveClick(nil);
  stat1.Panels[STATE_PNL_SBAR].Text := '';
end;

// отмена
procedure TChaildForm.btnCancelClick(Sender: TObject);
begin
  FEditorState := esNone;
  stat1.Panels[STATE_PNL_SBAR].Text := '';
  stat1.Panels[INFO_PNL_SBAR].Text := '';
  NullAllField;
end;

// сохранить
procedure TChaildForm.btnSaveClick(Sender: TObject);
begin
  try
    try
      with pfbdtst1 do
      case FEditorState of
        esDelete: begin
          if dbgrd1.DataSource.DataSet.Eof then
            Exit;
          Delete;
        end;

        esEdit: begin
          if dbgrd1.DataSource.DataSet.Eof then
            Exit;
          Edit;
          Post;
        end;

        esInsert: begin
          Insert;
          Post;
        end;

      else
        raise EAbort.Create('Не определенное значение FEditorState');
      end;

      pfbdtst1.Close;
      pfbdtst1.Open;

      DM.pfbtrnsctn1.CommitRetaining;
    except
      on EFIBError do
        raise EAbort.Create('Ошибка базы данных' + #13#10 + 'Обратитесь к разработчику');
    end;
  except
    { DONE -oexception -cошибки  : проверить hook на ошибки }
    on E: Exception do begin
      DM.pfbtrnsctn1.Rollback;
      Application.MessageBox(PChar(E.Message), 'Ошибка', MB_ICONERROR);
      raise Exception.Create(E.Message);
    end;
  end;

  btnCancelClick(nil);
end;

// обнулить поля
procedure TChaildForm.NullAllField;
var
  I: Integer;
begin
  for I := 0 to ComponentCount - 1 do
    if Components[I] is TEdit then
      (Components[I] as TEdit).Clear else
    if Components[I] is TDBLookupComboBox then
      (Components[I] as TDBLookupComboBox).KeyValue := null else
    if Components[I] is TDBLookupComboBoxEh then
      (Components[I] as TDBLookupComboBoxEh).KeyValue := null
end;

procedure TChaildForm.FormShow(Sender: TObject);
begin
  NullAllField;
  if not pfbdtst1.Active then
    pfbdtst1.Open
end;

// выбрать и закрыть
procedure TChaildForm.dbgrd1DblClick(Sender: TObject);
begin
  ModalResult := mrNone;
  if not dbgrd1.DataSource.DataSet.IsEmpty and (FEditorState = esNone) then
    ModalResult := mrOk;
end;

// подготовка 
procedure TChaildForm.QueryPrepare;
  procedure Prep(Q: TFIBQuery);
  begin
    if not Q.Prepared then
      Q.Prepare;
  end;
begin
  with pfbdtst1 do begin
    if not Active then
      Open;
    case FEditorState of
      esEdit: Prep(QUpdate);
      esInsert: Prep(QInsert);
      esDelete: Prep(QDelete);
    end;
  end;
end;

// возможно ли сохранение
procedure TChaildForm.actSaveUpdate(Sender: TObject);
{$IFDEF TESTMODE}
  function ChekedName: string;
  const
    PROP_NAME = 'Name';
  var
    I: Integer;
  //  PropInfo: PPropInfo;
    Value: Variant;
  begin
    Result := '';
    with FCheckComponents do
    for I := 0 to Count -1 do
      if IsPublishedProp (TComponent(Items[I]), PROP_NAME) then
      begin
        Value := GetPropValue (Items[I], PROP_NAME);
        Result := Result + string (Value) + '; ' end
      else
        Result := Result + 'No ' + TComponent(Items[I]).Name + '.' + PROP_NAME + '; '
  end;
{$ENDIF}
const
  CheckInput = 'Заполните все поля';
var
  I: Integer;
  IsSave: Boolean;
begin
  IsSave := True;

  actEdit.Enabled := (FEditorState <> esEdit) and not pfbdtst1.IsEmpty;
  actInsert.Enabled := FEditorState <> esInsert;
  actDelete.Enabled := (FEditorState <> esDelete) and not pfbdtst1.IsEmpty;

  case FEditorState of
    esEdit, esInsert: begin
      for I := 0 to FCheckComponents.Count - 1 do
        if (TObject(FCheckComponents.Items[I]) is TEdit) then begin
          if (TObject(FCheckComponents.Items[I]) as TEdit).Text = '' then
            IsSave := False end else
        if (TObject(FCheckComponents.Items[I]) is TDBLookupComboBox) then
          if (TObject(FCheckComponents.Items[I]) as TDBLookupComboBox).KeyValue = Null then
            IsSave := False;
            
      actSave.Enabled := IsSave;
{$IFDEF TESTMODE}
      stat1.Panels[INFO_PNL_SBAR].Text := 'TESTMODE: ' + FSelectTable + ', ' + ChekedName;
{$ELSE}
      if actSave.Enabled then
        stat1.Panels[INFO_PNL_SBAR].Text := NullAsStringValue else
      if stat1.Panels[INFO_PNL_SBAR].Text = NullAsStringValue then
          stat1.Panels[INFO_PNL_SBAR].Text := CheckInput
{$ENDIF}
    end;
  else
    stat1.Panels[INFO_PNL_SBAR].Text := '';
    actSave.Enabled := False;
  end;
end;

procedure TChaildForm.FormDestroy(Sender: TObject);
begin
  FCheckComponents.Free;
  pfbdtst1.Close;
end;

// закрыть все комбо 
procedure TChaildForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CloseAllCombobox(Self)
end;

procedure TChaildForm.SetRightText(AEdit: TEdit);
begin
  pPointer(AEdit)^ := TEditTextRight;
  TEditTextRight(AEdit).RecreateWnd;
end;

{ TEdit }

procedure TEditTextRight.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.Style := Params.Style or ES_CENTER;
end;     


procedure TChaildForm.actClearAllExecute(Sender: TObject);
begin
  with frmMain, pfbqryUpdate, trnUpdate do
  try
    Active := False;
    StartTransaction;
    SQL.Text := 'DELETE FROM ' + FSelectTable;
    ExecQuery;
    Commit;
  except
    Rollback;
  end;
end;

procedure TChaildForm.actClearAllUpdate(Sender: TObject);
begin
{$IFDEF TESTMODE}
  actClearAll.Enabled := FSelectTable <> NullAsStringValue;
{$ELSE}
  actClearAll.Enabled := False;
{$ENDIF}
end;

procedure TChaildForm.FormActivate(Sender: TObject);
const
  FROM_TABLE = 'FROM';
var
  s: string;
begin
  s := pfbdtst1.SQLs.SelectSQL.Text;
  if (Pos(FROM_TABLE, s) > 0) and (Pos(FROM_TABLE, s) + Length(FROM_TABLE) < Length(s)) then
    FSelectTable := Trim(Copy(s, Pos('FROM', s) + Length(FROM_TABLE), Length(s)))
end;

procedure TChaildForm.dbgrd1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    dbgrd1DblClick(nil)
end;

end.
