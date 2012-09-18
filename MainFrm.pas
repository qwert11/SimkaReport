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
    btnEnter: TButton;
    btnAuthor: TButton;
    btnPeople: TButton;
    btnPartCall: TButton;
    btnLinkRadio: TButton;
    btnPrsnlAcnt: TButton;
    btnUser: TButton;
    btnUserBrunch: TButton;
    mniAutentification: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure actEditUpdate(Sender: TObject);
    procedure actInsertExecute(Sender: TObject);
    procedure btnPeopleClick(Sender: TObject);
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
    procedure btnPartCallClick(Sender: TObject);
    procedure btnAuthorClick(Sender: TObject);
    procedure btnLinkRadioClick(Sender: TObject);
    procedure btnPrsnlAcntClick(Sender: TObject);
    procedure btnUserClick(Sender: TObject);
    procedure btnUserBrunchClick(Sender: TObject);
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
  SimkaFrm, CustomerGlobals, AuthentificationFrm, OwnerFrm, DeviceFrm,
  PeopleFrm, PartCallFrm, LinkRadioFrm, AuthorizationFrm,
  PersonalAccountFrm, UserFrm, UserBrunchFrm;

const
  PNL_INF_STATUS = 2;

{$R *.dfm}


procedure TfrmMain.FormCreate(Sender: TObject);
begin         
{$IFDEF TESTMODE}
  //btnFinance.Visible := True;
  btnTarifPlan.Visible := True;
  btnSimka.Visible := True;
  btnDevise.Visible := True;
  btnOwner.Visible := True;
  //btnAuthor.Visible := True;
  btnPartCall.Visible := True;
  btnLinkRadio.Visible := True;
  btnPrsnlAcnt.Visible := True;
  btnUser.Visible := True;
  btnUserBrunch.Visible := True;
  stat1.Panels[PNL_INF_STATUS].Text := 'Вы находитесь в режиме тестирования';
  SetExtendedReports;
{$ELSE}
  SetExtendedReports(False);
{$ENDIF}
  max_sum_diff := ReadIni('UserOption', 'max_sum_diff', max_sum_diff);

  Application.OnException := ApplicationEventException;

  with DM do
    try
      WindowState := ReadIni('Window', 'WindowState', 0);
      if not DB.Connected then begin
        DB.DatabaseName := ReadIni('Base', 'Patch', '');
        DB.Connected := True;
      end;

      if not pfbdtstView.Active then
        pfbdtstView.Open;
    except
      raise;
      Halt;
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
{$IFDEF TESTMODE}
  (Sender as TAction).Enabled :=
    not dbgrdh1.DataSource.DataSet.Eof
{$ELSE}
  (Sender as TAction).Enabled :=
    not dbgrdh1.DataSource.DataSet.Eof and CheckAutentification
{$ENDIF}
end;

procedure TfrmMain.btnPeopleClick(Sender: TObject);
begin
  frmPeople.ShowModal
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
        if not IsEmpty then begin
          Filter := 'RD_DATE = ''' + DM.fbdtfldViewRD_DATE.AsString + '''';
          Filtered := True;
        end;
        
        try
          EditingReport.ShowModal;
          if EditingReport.ModalResult <> mrOk then
            raise EAbort.Create('отмена редактирования');
        finally
          Filtered := False;
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
    Open;
    SetExtendedReports;
  except
    trnUpdate.Rollback;
    raise
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
  procedure DrawDiff;
  var
    old_sum: Currency;
  begin
     with dbgrdh1.Canvas, DM do begin
        if VarIsNull(fbcdfldViewOLD_SUM.Value) then
          old_sum := 0
        else
          old_sum := fbcdfldViewOLD_SUM.Value;
        if fbcdfldViewRB_SUM.Value - old_sum > max_sum_diff then
          Brush.Color := clRed
        else
          Brush.Color := clWhite;
        FillRect(Rect);
        Font.Color := clBlack;
        if Column.Field.DataType = ftString then
        //В строковых полях текст прижимается влево
          TextOut(Rect.Left + 2, Rect.Top + 2, Column.Field.Text)
        else
        //В остальных полях – вправо
          TextOut(Rect.Right - TextWidth(Column.Field.Text) -
            2, Rect.Top + 2, Column.Field.Text)
      end;
  end;
begin
  with Column do
  if (FieldName = 'RS_STATUS') or (FieldName = 'RS_IFINSTALL') or (FieldName = 'RS_RADRSNG_ALL')
      or (FieldName = 'RS_RADRSNG_BUSY') or (FieldName = 'RS_RADRSNG_NOANSWR') or
        (FieldName = 'RS_RADRSNG_OUTSD')
          then begin //Модифицируйте под себя
    if CharToBool(Column.Field.AsString) then
      DrawGridCheckBox(dbgrdh1.Canvas, Rect, true)
    else
      DrawGridCheckBox(dbgrdh1.Canvas, Rect, false) end else
  if FieldName = 'OLD_SUM' then
    DrawDiff
end;


procedure TfrmMain.SetExtendedReports(IsExtended: Boolean);
const
  BEGIN_EXRENDED_COLUMN = 9;
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

procedure TfrmMain.btnPartCallClick(Sender: TObject);
begin
  frmPartCall.ShowModal
end;

procedure TfrmMain.btnAuthorClick(Sender: TObject);
begin
  frmAuthorization.ShowModal
end;

procedure TfrmMain.btnLinkRadioClick(Sender: TObject);
begin
  frmLinkRadio.ShowModal
end;

procedure TfrmMain.btnPrsnlAcntClick(Sender: TObject);
begin
  frmPersonalAccount.ShowModal
end;

procedure TfrmMain.btnUserClick(Sender: TObject);
begin
  frmUser.ShowModal
end;

procedure TfrmMain.btnUserBrunchClick(Sender: TObject);
begin
  frmUserBrunch.ShowModal
end;

end.
