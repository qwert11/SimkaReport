unit MainFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IniFiles, DBGridEhGrouping, ExtCtrls, GridsEh, DBGridEh,
  ActnList, Menus, StdCtrls, DB, DBTables, BDE, DBXpress,
  fib, ComCtrls, EditingReportFrm, FIBDatabase, pFIBDatabase, FIBQuery,
  pFIBQuery;

type
  TfrmMain = class(TForm)
    dbgrdh1: TDBGridEh;
    pnl1: TPanel;
    actlst1: TActionList;
    actInsert: TAction;
    actEdit: TAction;
    actDelete: TAction;
    pm1: TPopupMenu;
    mniInsert: TMenuItem;
    mniEdit: TMenuItem;
    mniN1: TMenuItem;
    mniDelete: TMenuItem;
    mm1: TMainMenu;
    mniFile1: TMenuItem;
    mniRecord1: TMenuItem;
    mniInsert1: TMenuItem;
    mniEdit1: TMenuItem;
    mniN2: TMenuItem;
    mniDelete1: TMenuItem;
    btnNewRecord: TButton;
    btnEditRecord: TButton;
    btnDeleteRecord: TButton;
    btnTarifPlan: TButton;
    btnSimka: TButton;
    btnDevise: TButton;
    btnOwner: TButton;
    stat1: TStatusBar;
    btnAutentification: TButton;
    actAutentification: TAction;
    trnUpdate: TpFIBTransaction;
    pfbqryUpdate: TpFIBQuery;
    actExtendedReport: TAction;
    mniExtendedReport: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure actEditUpdate(Sender: TObject);
    procedure actInsertExecute(Sender: TObject);
    procedure btnFinanceClick(Sender: TObject);
    procedure btnTarifPlanClick(Sender: TObject);
    procedure btnSimkaClick(Sender: TObject);
    procedure ApplicationEventException(Sender: TObject; E: Exception);
    procedure actDeleteExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actAutentificationExecute(Sender: TObject);
    procedure actInsertUpdate(Sender: TObject);
    procedure SetEditReport(AEdit: TEditingReport);
    procedure btnOwnerClick(Sender: TObject);
    procedure btnDeviseClick(Sender: TObject);
    procedure dbgrdh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure actExtendedReportExecute(Sender: TObject);
    procedure actExtendedReportUpdate(Sender: TObject);
  private
    { Private declarations }
    property EditReport: TEditingReport write SetEditReport;
    procedure SetExtendedReports(IsExtended: Boolean = True);
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses DM_, CustomerFunctions, TarifPlanFrm,
  SimkaFrm, CustomerGlobals, AuthentificationFrm, OwnerFrm, DeviceFrm;

const
  PNL_INF_STATUS = 2;

{$R *.dfm}
{ TODO 5 -oDEFINE -cTEST : Убрать в настройках проэкта из DEFINE TESTMODE }

procedure TfrmMain.FormCreate(Sender: TObject);
begin

  {$IFDEF TESTMODE}
    //btnFinance.Visible := True;
    btnTarifPlan.Visible := True;
    btnSimka.Visible := True;
    btnDevise.Visible := True;
    btnOwner.Visible := True;
    stat1.Panels[PNL_INF_STATUS].Text := 'Вы находитесь в режиме тестирования';
  {$ELSE}
    SetExtendedReports(False);
  {$ENDIF}



  Application.OnException := ApplicationEventException;

  with DM do
    try
      WindowState := ReadIni('Window', 'WindowState', riInteger);
      if not DB.Connected then begin
        DB.DatabaseName := ReadIni('Base', 'Patch', riString);
        DB.Connected := True;
      end;

      if not pfbdtstView.Active then
        pfbdtstView.Open;
    except
      on E: Exception do begin
        Application.MessageBox(PChar(E.Message), 'Ошибка', MB_ICONERROR);
        Halt;
      end;
    end;
end;

function CheckAutentification(WithAutentif: Boolean = False): Boolean;
begin
  Result := False;
  if user.login = DEF_USER then
    if not WithAutentif or (frmAuthentification.ShowModal <> mrOk) then
        Exit;
  Result := True
end;

procedure TfrmMain.actInsertUpdate(Sender: TObject);
begin
{$IFNDEF TESTMODE}
  (Sender as TAction).Enabled := CheckAutentification
{$ENDIF}
end;

procedure TfrmMain.actEditUpdate(Sender: TObject);
begin
{$IFNDEF TESTMODE}
  (Sender as TAction).Enabled :=
    not dbgrdh1.DataSource.DataSet.Eof and CheckAutentification
{$ENDIF}
end;

procedure TfrmMain.btnFinanceClick(Sender: TObject);
begin
  //frmFinance.ShowModal
end;

procedure TfrmMain.btnTarifPlanClick(Sender: TObject);
begin
  frmTarifPlan.ShowModal
end;

procedure TfrmMain.btnSimkaClick(Sender: TObject);
begin
  frmSimka.ShowModal
end;

procedure TfrmMain.ApplicationEventException(Sender: TObject; E: Exception);
var
  //err: DBIResult;
  EDlg: TForm;
  error_string: string;
  ErrorsList: TStrings;
  sPatch: string[60];
  phnSimkaReportLog: string;
begin
  error_string := '';

  if E is EDatabaseError then
    error_string := 'Ошибка EDatabaseError' else
//     err := (E as EDBEngineError).errors[(E as EDBEngineError).errorcount - 1].errorcode; { TODO -oGlobalError -cException : Error TypeCast в этой строке }
//     if (err = DBIERR_KEYVIOL) then
//       error_string := 'Ошибка Key violation!'
//     else if (err = DBIERR_LOCKED) then
//       error_string := 'Запись блокирована другим пользователем'
//     else if (err = DBIERR_FILELOCKED) then
//       error_string := 'Таблица блокирована кем-то еще'
//     else
//       error_string := 'Другая ошибка DB' end else
  if E is EFIBError then
  { DONE  -oexception -cошибки  : отлавливать все ошибки}
    error_string := 'Ошибка базы данных FireBird';
  error_string := E.Message + ' ' + error_string;

  GetDir(0, sPatch);
  phnSimkaReportLog := sPatch + '\' + SIMKA_REPORT_LOG;

  ErrorsList := TStringList.Create;
  EDlg := CreateMessageDialog(error_string, mtError, [mbOK]);
  with ErrorsList do
  try
    if FileExists(phnSimkaReportLog) then
      LoadFromFile(phnSimkaReportLog);
    Add('');
    Add('');
    Add('{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{');
    Add(FormatDateTime('c', Now));
    Add('Пользователь: ID ' + IntToStr(user.ID) + ' ' + user.Surname + ' ' +
      user.Name + ' ' + user.Patronymic);
    Add(error_string);
    Add('}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}');
    SaveToFile(phnSimkaReportLog);

    EDlg.ShowModal;
  finally
    Free;
    EDlg.Release
  end;

end;

// удалить текущую запись
procedure TfrmMain.actDeleteExecute(Sender: TObject);
begin
  EditReport := erDelete
end;

// редактировать текущую запись
procedure TfrmMain.actEditExecute(Sender: TObject);
begin
  EditReport := erEdit
end;

// вставить запись
procedure TfrmMain.actInsertExecute(Sender: TObject);
begin
  EditReport := erInsert
end;

procedure TfrmMain.actAutentificationExecute(Sender: TObject);
begin
  frmAuthentification.ShowModal;
  if frmAuthentification.ModalResult = mrOK then
    stat1.Panels[PNL_INF_STATUS].Text := 'Вы зашли как (' + user.login + '): ' +
      user.Surname + ' ' + user.Name[1] + '.' + user.Patronymic[1] + '.'
end;


procedure TfrmMain.SetEditReport(AEdit: TEditingReport);
var
  EditingReport: TfrmEditingReport;
begin
{$IFNDEF TESTMODE}
  if not CheckAutentification(True) then
    Exit;
{$ENDIF}

  trnUpdate.StartTransaction;
  with pfbqryUpdate, dbgrdh1.DataSource.DataSet do
  try
    pfbqryUpdate.Close;
    
    case AEdit of
      erEdit: begin
        EditingReport := TfrmEditingReport.Create(Self, erEdit);
        Filter := 'RD_DATE = ''' + DM.fbdtfldViewRD_DATE.AsString + '''';
        Filtered := True;
        try
          EditingReport.ShowModal;
          if EditingReport.ModalResult <> mrOk then
            raise EAbort.Create('отмена редактирования');
        finally
          Filtered := False;
          EditingReport.Free
        end;
      end;

      erInsert: begin
        EditingReport := TfrmEditingReport.Create(Self, erInsert);
        try
          EditingReport.ShowModal;
          if EditingReport.ModalResult <> mrOk then
            raise EAbort.Create('отмена редактирования');
        finally
          EditingReport.Free
        end;
      end;

      erDelete: begin
        if MessageDlg('Вы действительно хотите удалить запись', mtWarning,
            mbOKCancel, 0) <> mrOk then
          Exit;
          
        try
          SQL.Text :=
            'DELETE FROM REPORT_DAY ' +
            'WHERE ' +
            'RD_DATE = ''' + DM.fbdtfldViewRD_DATE.AsString + '''';
          ExecQuery;
        except
          raise Exception.Create('Нельзя удалить запись из пустой таблицы');
        end;
      end;
    end;

    trnUpdate.Commit;
    trnUpdate.Active := False;
    Close;
    Open
  except
    trnUpdate.Rollback;
  end;
end;

procedure TfrmMain.btnOwnerClick(Sender: TObject);
begin
  frmOwner.ShowModal
end;

procedure TfrmMain.btnDeviseClick(Sender: TObject);
begin
  frmDevice.ShowModal
end;

procedure TfrmMain.dbgrdh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);

  procedure DrawGridCheckBox(Canvas: TCanvas; Rect: TRect; Checked: boolean);
  var
    DrawFlags: Integer;
  begin
    Canvas.TextRect(Rect, Rect.Left + 1, Rect.Top + 1, ' ');
    DrawFrameControl(Canvas.Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT);
    DrawFlags := DFCS_BUTTONCHECK or DFCS_ADJUSTRECT;// DFCS_BUTTONCHECK
    if Checked then
      DrawFlags := DrawFlags or DFCS_CHECKED;
    DrawFrameControl(Canvas.Handle, Rect, DFC_BUTTON, DrawFlags);
  end;
begin
  with Column do
  if (FieldName = 'cRS_Status') or (FieldName = 'cRS_IfInstall') or (FieldName = 'SRADRSNG_ALL')
      or (FieldName = 'SRADRSNG_BUSY') or (FieldName = 'SRADRSNG_NOANSWR') or
        (FieldName = 'SRADRSNG_OUTSD') or (FieldName = 'SCLIR')
          then // Модифицируйте под себя
    if CharToBool(Column.Field.AsString) then
      DrawGridCheckBox(dbgrdh1.Canvas, Rect, true)
    else
      DrawGridCheckBox(dbgrdh1.Canvas, Rect, false)
end;


procedure TfrmMain.SetExtendedReports(IsExtended: Boolean);
const
  BEGIN_EXRENDED_COLUMN = 20;
var
  I: Integer;
begin
  extended_reports := IsExtended;
  for I := BEGIN_EXRENDED_COLUMN to dbgrdh1.Columns.Count - 1 do
    dbgrdh1.Columns[I].Visible := IsExtended;
end;

procedure TfrmMain.actExtendedReportExecute(Sender: TObject);
begin
  SetExtendedReports(not extended_reports);
end;

procedure TfrmMain.actExtendedReportUpdate(Sender: TObject);
begin
  if extended_reports then
    actExtendedReport.Caption := 'Включить компактный отчет'
  else
    actExtendedReport.Caption := 'Включить расширеный отчет'
end;

end.
