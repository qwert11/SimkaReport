unit EditingReportFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, DBGridEh, StdCtrls, Mask, DBCtrlsEh,
  DBLookupEh, pFIBDataSet, DBGridEhGrouping, GridsEh, Grids,
  MemTableDataEh, Db, DataDriverEh, DBClient, DBGrids, MConnect, ActnList,
  Menus, Buttons, FIBQuery, pFIBQuery, FIBDatabase, pFIBDatabase, dbcgrids,
  DBCtrls;

type
  TEditingReport = (erEdit, erInsert, erDelete);

  TfrmEditingReport = class(TForm)
    tmr1: TTimer;
    stat1: TStatusBar;
    dbgrdhRepSIM: TDBGridEh;
    ds1: TDataSource;
    dtpDate: TDateTimePicker;
    lbl1: TLabel;
    pnl1: TPanel;
    btnSave: TBitBtn;
    btnClose: TBitBtn;
    cdsTmpER: TClientDataSet;
    actlst1: TActionList;
    actInsert: TAction;
    actEditField: TAction;
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
    actSave: TAction;
    actApply: TAction;
    mniApply: TMenuItem;
    cdsTmpErBc: TClientDataSet;
    ds2: TDataSource;
    dbctrlgrd1: TDBCtrlGrid;
    lbl4: TLabel;
    lbl5: TLabel;
    intgrfldTmpERcRS_ID: TIntegerField;
    intgrfldTmpERcRS_In: TIntegerField;
    intgrfldTmpERcC_RS_In: TIntegerField;
    intgrfldTmpERcRS_SMS: TIntegerField;
    intgrfldTmpERcC_RS_SMS: TIntegerField;
    intgrfldTmpERcRS_Owner: TIntegerField;
    intgrfldTmpERcC_RS_Owner: TIntegerField;
    intgrfldTmpERcRS_Simka: TIntegerField;
    intgrfldTmpERcC_RS_Simka: TIntegerField;
    intgrfldTmpERcRS_TarifPlan: TIntegerField;
    intgrfldTmpERcC_RS_TarifPlan: TIntegerField;
    strngfldTmpERcRS_Status: TStringField;
    strngfldTmpERcC_RS_Status: TStringField;
    intgrfldTmpERcRS_Balance: TIntegerField;
    intgrfldTmpERcC_RS_Balance: TIntegerField;
    intgrfldTmpERcRS_User: TIntegerField;
    intgrfldTmpERcC_RS_User: TIntegerField;
    intgrfldTmpERcRS_UserBrunch: TIntegerField;
    intgrfldTmpERcC_RS_UserBrunch: TIntegerField;
    intgrfldTmpERcRS_PartCall: TIntegerField;
    intgrfldTmpERcC_RS_PartCall: TIntegerField;
    strngfldTmpERcRS_IfInstall: TStringField;
    strngfldTmpERcC_RS_IfInctall: TStringField;
    strngfldTmpERcRS_ICC_SIM: TStringField;
    strngfldTmpERcC_RS_ICC_SIM: TStringField;
    strngfldTmpERcRS_PUK1: TStringField;
    strngfldTmpERcC_RS_PUK1: TStringField;
    strngfldTmpERcRS_PUK2: TStringField;
    strngfldTmpERcC_RS_PUK2: TStringField;
    dtfldTmpERcRS_ReportDay: TDateField;
    dtfldTmpERcC_RS_ReportDay: TDateField;
    crncyfldTmpERcRB_Sum: TCurrencyField;
    crncyfldTmpERcC_RB_SUM: TCurrencyField;
    intgrfldTmpERcRB_Prsnl_Acnt: TIntegerField;
    intgrfldTmpERcC_RB_PrsnlAcnt: TIntegerField;
    strngfldTmpERIn: TStringField;
    strngfldTmpEROwner: TStringField;
    strngfldTmpERSimka: TStringField;
    strngfldTmpERTarifPlan: TStringField;
    strngfldTmpERPrsnlAcnt: TStringField;
    strngfldTmpERUser: TStringField;
    strngfldTmpERUserBrunch: TStringField;
    strngfldTmpERPartCall: TStringField;
    intgrfldTmpErBccRB_ID: TIntegerField;
    crncyfldTmpErBccSUM: TCurrencyField;
    intgrfldTmpErBccPrsnlAcnt: TIntegerField;
    strngfldTmpErBcPrsnlAcnt: TStringField;
    cbbIDAccount: TDBComboBoxEh;
    mniN3: TMenuItem;
    mniSave: TMenuItem;
    edtSUM: TDBEditEh;
    actPrsnlAcnt: TAction;
    dbnvgrBalance: TDBNavigator;
    procedure tmr1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbgrdhRepSIMKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actEditFieldUpdate(Sender: TObject);
    procedure actEditFieldExecute(Sender: TObject);
    procedure actSaveExecute(Sender: TObject);
    procedure actSaveUpdate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

    procedure cdsTmpERBeforePost(DataSet: TDataSet);
    procedure dbgrdhRepSIMDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure actApplyExecute(Sender: TObject);
    procedure actApplyUpdate(Sender: TObject);
    procedure cdsTmpErBcAfterPost(DataSet: TDataSet);
    procedure cdsTmpErBcBeforePost(DataSet: TDataSet);
    procedure actInsertExecute(Sender: TObject);
    procedure actInsertUpdate(Sender: TObject);
    procedure actPrsnlAcntExecute(Sender: TObject);
  private
    { Private declarations }
    FEditingReport: TEditingReport;
    function CheckField(F: TField; ShowWarning: Boolean = True): Boolean;
    function CheckRepSimRecord(ShowWarning: Boolean = True): Boolean;
    function CheckRepBalanceRecord(ShowWarning: Boolean = True): Boolean;
    procedure ShowsWarningStat1(F: TField; AMsg: string);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent;
        AEditingReport: TEditingReport); reintroduce;
  end;

var
  frmEditingReport: TfrmEditingReport;

implementation

uses CustomerGlobals, MainFrm, DM_, CustomerFunctions,
  OwnerFrm, SimkaFrm, TarifPlanFrm, DeviceFrm, PeopleFrm, UserBrunchFrm,
  UserFrm, PartCallFrm, PersonalAccountFrm;

const
  PNL_INF_STAT_EDIT = 0;
  PNL_INF_TIMER = 1;
  PNL_INF_RESPONS = 2;

  FN_ER_LOOKUP_DEVICE = 'In';
  FN_ER_LOOKUP_OWNER = 'Owner';
  FN_ER_LOOKUP_SIMKA = 'Simka';
  FN_ER_LOOKUP_TARIF_PLAN = 'TarifPlan';
  FN_ER_LOOKUP_PRSNL_ACNT = 'PrsnlAcnt';
  FN_ER_LOOKUP_USER = 'User';
  FN_ER_LOOKUP_USER_BRUNCH = 'UserBrunch';
  FN_ER_LOOKUP_PART_CALL = 'PartCall';
  

var
  TimerStop: TTime;
  old_rd_date: TDate; // редактируемая запись ReportDay

{$R *.dfm}

constructor TfrmEditingReport.Create(AOwner: TComponent;
  AEditingReport: TEditingReport);
begin
  inherited Create(AOwner);
  FEditingReport := AEditingReport;
end;

// время работы 
procedure TfrmEditingReport.tmr1Timer(Sender: TObject);
begin
  stat1.Panels[PNL_INF_TIMER].Text := TimeToStr(Now - TimerStop)
end;

//check users
procedure TfrmEditingReport.FormActivate(Sender: TObject);
begin
  { TODO 5 : раскоментировать и добавить вход по паролю }
  if user.login = DEF_USER then begin
{$IFDEF TESTMODE}
{$ELSE}
    MessageBox(0, 'Неверный логин и пароль', 'ошибка', MB_ICONERROR);
    Exit;
{$ENDIF}
  end;

  TimerStop := Time;

  // чистим edit-ты
  ClearEdit(Self);

  Caption := 'Сегодня: ' + DateToStr(Date) + ' ' +
    user.Surname + ' ' + user.Name[1] + '.' + user.Patronymic[1] + '.';

  if not cdsTmpER.Active then
    cdsTmpER.CreateDataSet;

  if not cdsTmpErBc.Active then
    cdsTmpErBc.CreateDataSet;

  with frmMain.dbgrdh1.DataSource.DataSet do
    try
      // внимание опасный промежуток после выключения - включить
      cdsTmpER.BeforePost := nil;   {*}
      //cdsTmpER.BeforeInsert := nil; {*}
      { TODO -oFormActive -cCheck  : подумать о том нужен ли обработчик OnBefoInsert и как с ним работать }

      case FEditingReport of
        erEdit, erInsert:
          begin

            case FEditingReport of
              erEdit: begin
                if IsEmpty then
                  Exit;

                // запоминаем редактируемую запись ReportDay
                old_rd_date := FieldByName('RD_ID').Value;
                
                stat1.Panels[PNL_INF_STAT_EDIT].Text := 'Редактирование записи: ' +
                  FieldByName('RD_ID').AsString;
                stat1.Panels[PNL_INF_RESPONS].Text := 'Отчет составил: ' +
                  FieldByName('RE_SURNAME').AsString;
              end;

              erInsert: begin
                dtpDate.Date := Date;
                stat1.Panels[PNL_INF_STAT_EDIT].Text := 'Новая запись';
                stat1.Panels[PNL_INF_RESPONS].Text := 'Отчет составил: ' +
                  user.Surname + ' ' + user.Name[1] + '.' + user.Patronymic[1] + '.';
                actSave.Enabled := False;
              end;
            end;

            // CDS TmpErBC инициируем поля с последнего заполнения если оно есть
            First;
            if not Eof then begin
              dtpDate.Date := FieldByName('RD_DATE').AsDateTime;
              with DM do
              while not Eof do begin
                if not cdsTmpErBc.Locate('cPrsnlAcnt', fbntgrfldViewRB_PRSNL_ACNT.Value, []) then 
                  try
                    cdsTmpErBc.Append;
                    intgrfldTmpErBccRB_ID.Value := fbntgrfldViewRS_BALANCE.Value;
                    crncyfldTmpErBccSUM.Value := fbcdfldViewRB_SUM.Value;
                    intgrfldTmpErBccPrsnlAcnt.Value := fbntgrfldViewRB_PRSNL_ACNT.Value;
                    cdsTmpErBc.Post;
                  except
                    on E: Exception do begin
                      cdsTmpErBc.Cancel;
                      Application.MessageBox(PChar(E.Message), 'Ошибка добавления данных', MB_ICONERROR);
                      Break;
                    end;
                  end;
                Next;
              end;
            end;

            // CDS TmpER
            First;
            while not Eof do begin
              cdsTmpER.Append;
              try
                intgrfldTmpERcRS_ID.Value := FieldByName('RSID').AsInteger;
                intgrfldTmpERcRS_In.Value := FieldByName('RS_IN').AsInteger;
                intgrfldTmpERcC_RS_In.Value := FieldByName('RS_IN').AsInteger;
                intgrfldTmpERcRS_SMS.Value := FieldByName('RS_SMS').AsInteger;
                intgrfldTmpERcC_RS_SMS.Value := FieldByName('RS_SMS').AsInteger;
                intgrfldTmpERcRS_Owner.Value := FieldByName('RS_OWNER').AsInteger;
                intgrfldTmpERcC_RS_Owner.Value := FieldByName('RS_OWNER').AsInteger;
                intgrfldTmpERcRS_Simka.Value := FieldByName('RS_SIMKA').AsInteger;
                intgrfldTmpERcC_RS_Simka.Value := FieldByName('RS_SIMKA').AsInteger;
                intgrfldTmpERcRS_TarifPlan.Value := FieldByName('RS_TarifPlan').AsInteger;
                intgrfldTmpERcC_RS_TarifPlan.Value := FieldByName('RS_TarifPlan').AsInteger;
                strngfldTmpERcRS_Status.Value := FieldByName('RS_STATUS').AsString;
                strngfldTmpERcC_RS_Status.Value := FieldByName('RS_STATUS').AsString;
                intgrfldTmpERcRS_Balance.Value := FieldByName('RS_BALANCE').AsInteger;
                intgrfldTmpERcC_RS_Balance.Value := FieldByName('RS_BALANCE').AsInteger;
                intgrfldTmpERcRS_User.Value := FieldByName('RS_USER').AsInteger;
                intgrfldTmpERcC_RS_User.Value := FieldByName('RS_USER').AsInteger;
                intgrfldTmpERcRS_UserBrunch.Value := FieldByName('RS_USER_BRUNCH').AsInteger;
                intgrfldTmpERcC_RS_UserBrunch.Value := FieldByName('RS_USER_BRUNCH').AsInteger;
                intgrfldTmpERcRS_PartCall.Value := FieldByName('RS_PART_CALL').AsInteger;
                intgrfldTmpERcC_RS_PartCall.Value := FieldByName('RS_PART_CALL').AsInteger;
                strngfldTmpERcRS_IfInstall.Value := FieldByName('RS_IFINSTALL').AsString;
                strngfldTmpERcC_RS_IfInctall.Value := FieldByName('RS_IFINSTALL').AsString;
                strngfldTmpERcRS_ICC_SIM.Value := FieldByName('RS_ICC_SIM').AsString;
                strngfldTmpERcC_RS_ICC_SIM.Value := FieldByName('RS_ICC_SIM').AsString;
                strngfldTmpERcRS_PUK1.Value := FieldByName('RS_PUK1').AsString;
                strngfldTmpERcC_RS_PUK1.Value := FieldByName('RS_PUK1').AsString;
                strngfldTmpERcRS_PUK2.Value := FieldByName('RS_PUK2').AsString;
                strngfldTmpERcC_RS_PUK2.Value := FieldByName('RS_PUK2').AsString;
                crncyfldTmpERcRB_Sum.Value := FieldByName('RB_SUM').Value;
                crncyfldTmpERcC_RB_SUM.Value := FieldByName('RB_SUM').Value;
                intgrfldTmpERcRB_Prsnl_Acnt.Value := FieldByName('RB_PRCNL_ACNT').Value;
                intgrfldTmpERcC_RB_PrsnlAcnt.Value := FieldByName('RB_PRCNL_ACNT').Value;

                cdsTmpER.Post;
                Next;
              except
                on E: Exception do begin
                  cdsTmpER.Cancel;
                  Application.MessageBox(PChar(E.Message), 'Ошибка добавления данных', MB_ICONERROR);
                  Break;
                end;
              end;
            end;
          end;
      else
        raise EAbort.Create('Неверный тип открытия Editing Report');
      end;
    finally
      // опасный промежуток включаем после - выключить
      cdsTmpER.BeforePost := cdsTmpERBeforePost;    {*}
      //cdsTmpER.BeforeInsert := cdsTmpERBeforePost;  {*}
    end;
end;

// выбрать из списка
procedure TfrmEditingReport.dbgrdhRepSIMKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
    actEditFieldExecute(nil);
end;

procedure TfrmEditingReport.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CloseAllCombobox(Self)
end;

// показать окно редактирования 
procedure TfrmEditingReport.actEditFieldUpdate(Sender: TObject);
begin
  with dbgrdhRepSIM.Columns[dbgrdhRepSIM.SelectedIndex] do
      (Sender as TAction).Enabled := (FieldName = FN_ER_LOOKUP_SIMKA) or
      (FieldName = FN_ER_LOOKUP_DEVICE) or (FieldName = FN_ER_LOOKUP_OWNER);
end;

procedure TfrmEditingReport.actEditFieldExecute(Sender: TObject);
begin
  with dbgrdhRepSIM.Columns[dbgrdhRepSIM.SelectedIndex] do
    if (FieldName = FN_ER_LOOKUP_SIMKA) or (FieldName = FN_ER_LOOKUP_DEVICE) or
        (FieldName = FN_ER_LOOKUP_OWNER) then begin
      if not (cdsTmpER.State in [dsEdit, dsInsert]) then
        cdsTmpER.Edit;

      if FieldName = FN_ER_LOOKUP_DEVICE then with frmDevice do begin
        ShowModal;
        if ModalResult = mrOK then
          intgrfldTmpERcRS_In.Value := pfbdtst1DID.Value;
      end else
      if FieldName = FN_ER_LOOKUP_OWNER then with frmOwner do begin
        ShowModal;
        if ModalResult = mrOK then
          intgrfldTmpERcRS_Owner.Value := pfbdtst1OID.Value;
      end else
      if FieldName = FN_ER_LOOKUP_SIMKA then with frmSimka do begin
        ShowModal;
        if ModalResult = mrOK then
          intgrfldTmpERcRS_Simka.Value := pfbdtst1SID.Value;
      end else
      if FieldName = FN_ER_LOOKUP_TARIF_PLAN then with frmTarifPlan do begin
        ShowModal;
        if ModalResult = mrOK then
          intgrfldTmpERcRS_TarifPlan.Value := pfbdtst1TPID.Value;
      end else
      if FieldName = FN_ER_LOOKUP_PRSNL_ACNT then with frmPersonalAccount do begin
        ShowModal;
        if ModalResult = mrOK then
          intgrfldTmpERcRB_Prsnl_Acnt.Value := fbntgrfldpfbdtst1PA_ID.Value;
      end else
      if FieldName = FN_ER_LOOKUP_USER then with frmUser do begin
        ShowModal;
        if ModalResult = mrOK then
          intgrfldTmpERcRS_User.Value := fbntgrfldpfbdtst1U_ID.Value;
      end else
      if FieldName = FN_ER_LOOKUP_USER_BRUNCH then with frmUserBrunch do begin
        ShowModal;
        if ModalResult = mrOK then
          intgrfldTmpERcRS_UserBrunch.Value := fbntgrfldpfbdtst1UB_ID.Value;
      end else
      if FieldName = FN_ER_LOOKUP_PART_CALL then with frmPartCall do begin
        ShowModal;
        if ModalResult = mrOK then
          intgrfldTmpERcRS_PartCall.Value := fbntgrfldpfbdtst1PC_ID.Value;
      end;
    end;
end;


{ TODO -ocdsTmpER -cSort : сортировка по клику на head }
procedure TfrmEditingReport.actSaveExecute(Sender: TObject);
begin
  
  ModalResult := mrNone;
  { TODO 5 -oUpdate -cChecked : проверить введенные данные если в cdsTmpER то что cdsTmpErBc}
  cdsTmpErBc.First;
  while not cdsTmpErBc.Eof do begin
    cdsTmpER.First;

    with cdsTmpER do
    while not Eof do
      if Locate('cRB_Prsnl_Acnt', intgrfldTmpErBccPrsnlAcnt.Value, []) then
        Next
      else begin
        Exit;
      end;
      
    cdsTmpErBc.Next;
  end;

  with cdsTmpER do begin
    First;
    while not Eof do
      if CheckRepSimRecord then
        Next
      else
        Exit;
  end;

  with frmMain, pfbqryUpdate do
  try
    Close;

    if old_rd_date <> dtpDate.Date then begin
      SQL.Text := 'SELECT COUNT(RD_DATE) FROM REPORT_DAY';
      ExecQuery;
      if Fields[0].Value > 0 then begin
        MessageDlg('Отчет с датой ' + DateToStr(dtpDate.Date) + ' уже существует,' + #13#10 +
            'введите пожалуйста другую дату', mtError, [mbCancel], 0);
        Close;
        Exit;
      end;
    end;

//        SQL.Text := 'ALTER INDEX REPORT_DAY_DATE INACTIVE';
//        ExecQuery;
//        Close;

    case FEditingReport of
      erEdit:
        SQL.Text := 'UPDATE REPORT_DAY SET RD_DATE = ''' + DateToStr(dtpDate.Date) + ''', ' +
            'RD_RESPONS = ' + IntToStr(user.ID) + ' ' +
            'WHERE RD_DATE = ' + DateToStr(old_rd_date);
      erInsert:
        SQL.Text := 'INSERT INTO REPORT_DAY (RD_DATE, RD_RESPONS) VALUES ' +
            '(''' + DateToStr(dtpDate.Date) + ''',' + IntToStr(user.ID) + ')';
    end;
    ExecQuery;
    Close;

//        SQL.Text := 'ALTER INDEX REPORT_DAY_DATE ACTIVE';
//        ExecQuery;
//        Close;


    // удаляем старые значения
    SQL.Text := 'DELETE FROM REPORT_SIMKA ' +
        'WHERE RS_REPORTDAY = ' + DateToStr(dtpDate.Date); // old_rd_date ???????????
    ExecQuery;
    Close;

    // удаляем старые значения
    SQL.Text := 'DELETE FROM REPORT_BALANCE ' +
        'WHERE RB_REPORTDAY = ' + DateToStr(dtpDate.Date); // old_rd_date ???????????
    ExecQuery;
    Close;

    with cdsTmpErBc do begin
      First;
      while not Eof do begin
        pfbqryUpdate.Close;
        SQL.Text := 'INSERT INTO REPORT_BALANCE SET (' +
            'RB_SUM, RB_PRSNL_ACNT, RB_REPORTDAY) VALUES(' +
            crncyfldTmpErBccSUM.AsString + ',' +
            intgrfldTmpErBccPrsnlAcnt.AsString + ', ''' +
            DateToStr(dtpDate.Date) + ''')';

        ExecQuery;

        cdsTmpER.Filtered := False;
        cdsTmpER.Filter := 'cRB_Prsnl_Acnt = ' + intgrfldTmpErBccPrsnlAcnt.AsString;
        try
          cdsTmpER.Filtered := True;
          with cdsTmpER do begin
            First;
            while not Eof do begin
              if VarIsNull(intgrfldTmpERcRB_Prsnl_Acnt.AsVariant) then begin
                pfbqryUpdate.Close;
                SQL.Text := 'INSERT INTO REPORT_BALANCE SET (' +
                    'RB_SUM, RB_PRSNL_ACNT, RB_REPORTDAY) VALUES(' +
                    crncyfldTmpErBccSUM.AsString + ',' +
                    intgrfldTmpErBccPrsnlAcnt.AsString + ', ''' +
                    DateToStr(dtpDate.Date) + ''')';
                ExecQuery;
              end;

              pfbqryUpdate.Close;
              SQL.Text := 'INSERT INTO REPORT_SIMKA (' +
                  'RS_IN, ' +
                  'RS_SMS, ' +
                  'RS_OWNER, ' +
                  'RS_SIMKA, ' +
                  'RS_TARIFPLAN, ' +
                  'RS_STARUS, ' +

                  'RS_BALANCE, ' +

                  'RS_USER, ' +
                  'RS_USER_BRUNCH, ' +
                  'RS_PART_CALL, ' +
                  'RS_IFINSTALL, ' +
                  'RS_ICC_SIM, ' +
                  'RS_PUK1, ' +
                  'RS_PUK2, ' +

                  'RS_REPORTDAY ) VALUES (' +

                    intgrfldTmpERcRS_In.AsString + ', ' +
                    intgrfldTmpERcRS_SMS.AsString + ', ' +
                    intgrfldTmpERcRS_Owner.AsString + ', ' +
                    intgrfldTmpERcRS_Simka.AsString + ', ' +
                    intgrfldTmpERcRS_TarifPlan.AsString + ', ' +
                    strngfldTmpERcRS_Status.AsString + ', ' +
                    Fields[0].AsString + ', ' + // (new_rb_id) новая запись из Report_Balance
                    intgrfldTmpERcRS_User.AsString + ', ' +
                    intgrfldTmpERcRS_UserBrunch.AsString + ', ' +
                    intgrfldTmpERcRS_PartCall.AsString + ', ' +
                    strngfldTmpERcRS_IfInstall.AsString + ', ' +
                    strngfldTmpERcRS_ICC_SIM.AsString + ', ' +
                    strngfldTmpERcRS_PUK1.AsString + ', ' +
                    strngfldTmpERcRS_PUK2.AsString + ', ' +
                    DateToStr(dtpDate.Date) +
              ')';

              ExecQuery;
              Next;
            end;
          end;
        finally
          cdsTmpER.Filtered := False;
        end;

        Next;
      end;
    end;

    Close;
  except
    on E: Exception do begin
      trnUpdate.Rollback;
      Application.MessageBox(PChar(E.Message), 'ошибка', MB_ICONERROR);
      raise Exception.Create(E.Message);
      Halt;
    end;
  end;  
  ModalResult := mrOk;
end;

procedure TfrmEditingReport.actSaveUpdate(Sender: TObject);
  function Check(cbb: TDBLookupComboboxEh): Boolean;
  begin
    Result := True;
    if (cbb.KeyValue = Null) then begin
      cbb.Color := clRed;
      Result := False end
    else
      cbb.Color := clWindow;
  end;
  function CheckFloat(edt: TEdit): Boolean;
  begin
    try
      Result := TestFloat(edt.Text);
      if Result then
        edt.Color := clWindow
      else
        edt.Color := clRed
    except
      Result := False;
      edt.Color := clRed;
    end;
  end;
var
  bEnabled: Boolean;
begin
  // дата (красная), ID лицевого счета 1,2 и сумма 1,2
  // состояние набора данных
  // набор данных
  bEnabled := True;

  if Trunc(dtpDate.Date) <> Trunc(Date) then
    dtpDate.Color := clRed
  else
    dtpDate.Color := clWindow;

  if cdsTmpER.IsEmpty then
    bEnabled := False;


  if (cdsTmpER.State <> dsBrowse) or (cdsTmpErBc.State <> dsBrowse) then
    bEnabled := False;

  (Sender as TAction).Enabled := bEnabled;
end;

procedure TfrmEditingReport.FormDestroy(Sender: TObject);
begin
  if Assigned(cdsTmpER.DataSetField) then
    cdsTmpER.EmptyDataSet;
  if Assigned(cdsTmpErBc.DataSetField) then
    cdsTmpErBc.EmptyDataSet;
end;

function TfrmEditingReport.CheckField(F: TField; ShowWarning: Boolean = True): Boolean;
begin
  Result := True;
  if VarIsNull(F.AsVariant) then
    Result := False;
  if F is TCurrencyField then
    if not TestFloat(F.AsString) then
      Result := False;
  if F is TIntegerField then
    if not TestFloat(F.AsString) then
      Result := False;
  if (not Result) and ShowWarning then
    ShowsWarningStat1(F, 'Не верно!!!');
end;

{ DONE 5 -oBeforePost -cCheck :
post в Insert(первом) и Insert(копированя посл.данных) и Edit из ReportSim и добавление пользователем  данных }
// проверка записи
function TfrmEditingReport.CheckRepSimRecord(ShowWarning: Boolean = True): Boolean;
begin
  Result := False;
  if not CheckField(intgrfldTmpERcRS_Simka) then Exit;
  if not CheckField(crncyfldTmpERcRB_Sum) then Exit;
  if not CheckField(intgrfldTmpERcRS_SMS) then Exit;
  if not CheckField(intgrfldTmpERcRS_In) then Exit;
  if not CheckField(intgrfldTmpERcRS_UserBrunch) then Exit;
  if not CheckField(intgrfldTmpERcRS_TarifPlan) then Exit;
  Result := True;
end;


function TfrmEditingReport.CheckRepBalanceRecord(
  ShowWarning: Boolean): Boolean;
begin
  Result := False;
  if not CheckField(crncyfldTmpErBccSUM) then Exit;
  Result := True;
end;

{ TODO -oFormActive -cCheck  : где - то EOF поменять на IsEmpty }

procedure TfrmEditingReport.cdsTmpERBeforePost(DataSet: TDataSet);
begin
  if not CheckRepSimRecord then
    Abort;
end;

procedure TfrmEditingReport.cdsTmpErBcBeforePost(DataSet: TDataSet);
begin
  if not CheckRepBalanceRecord then
    Abort
end;
{ TODO 1 : apply }
{ TODO 5 -cCheck : различия выделить цветом (разные для edit и insert)}

procedure TfrmEditingReport.dbgrdhRepSIMDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
  procedure SetFormatingCell(AColor: TColor);
  begin
    with dbgrdhRepSIM.Canvas do begin
      Brush.Color := AColor;
      FillRect(Rect);
      Font.Color := clWhite;
      if Column.Field.DataType = ftString then
      //В строковых полях текст прижимается влево
        TextOut(Rect.Left + 2, Rect.Top + 2, Column.Field.Text)
      else
      //В остальных полях – вправо
        TextOut(Rect.Right - TextWidth(Column.Field.Text) -
          2, Rect.Top + 2, Column.Field.Text)
    end;
  end;
  { TODO  -oDrawCellColum -cCheck : Закончить ф-цию FindDiff для erEdit - решение создать  для сравнения поля CONST}
//  function FindDiff: Boolean;
//  begin
//
//  end;
begin
  { TODO -cCheck : cC_RB_PrsnlAcnt не совместимо с cRB_Prsnl_Acnt }
  case FEditingReport of
    erEdit:
      if  VarIsNull(cdsTmpER.FieldByName(Column.FieldName).Value) then
        SetFormatingCell(clRed);
    erInsert:
      if VarIsNull(cdsTmpER.FieldByName(Column.FieldName).Value) then
        SetFormatingCell(clRed);
  end;
end;


procedure TfrmEditingReport.actApplyExecute(Sender: TObject);
begin
  if ((cdsTmpER.State = dsEdit) or (cdsTmpER.State =  dsInsert)) then
    cdsTmpER.Post;
  if ((cdsTmpErBc.State = dsEdit) or (cdsTmpErBc.State = dsInsert)) then
    cdsTmpErBc.Post;
end;

procedure TfrmEditingReport.actApplyUpdate(Sender: TObject);
begin
  actApply.Enabled :=
  (
    ((cdsTmpER.State = dsEdit) or (cdsTmpER.State =  dsInsert))
    and
    ((cdsTmpErBc.State <> dsEdit) and (cdsTmpErBc.State <> dsInsert))
  )

  or

  (
    ((cdsTmpER.State <> dsEdit) and (cdsTmpER.State <>  dsInsert))
    and
    ((cdsTmpErBc.State = dsEdit) or (cdsTmpErBc.State = dsInsert))
  )
end;

procedure TfrmEditingReport.ShowsWarningStat1(F: TField; AMsg: string);
const
  COUNT_SHOWS = 3;
var
  I: Integer;
begin
  tmr1.Enabled := False;
  try
    for I := 1 to COUNT_SHOWS do begin
      //dbgrdhRepSIM.FindFieldColumn()
      stat1.Panels[PNL_INF_TIMER].Text := F.FieldName + ': ' + AMsg;           
        //dbgrdhRepSIM.FieldColumns[F.FieldName].Title.Caption + ': ' + AMsg;
      //stat1.Refresh;
      Delay(400);
      stat1.Panels[PNL_INF_TIMER].Text := '';
      //stat1.Refresh;
      Delay(100);
    end;
  finally
    tmr1.Enabled := True;
  end;
end;

procedure TfrmEditingReport.cdsTmpErBcAfterPost(DataSet: TDataSet);
begin
  cdsTmpER.First;
  while not cdsTmpER.Eof do begin
    if not VarIsNull(intgrfldTmpERcRB_Prsnl_Acnt.AsVariant) then
      if cdsTmpErBc.Locate('cPrsnlAcnt', intgrfldTmpERcRB_Prsnl_Acnt.Value, []) then
        crncyfldTmpERcRB_Sum.Value := crncyfldTmpErBccSUM.Value
      else
        crncyfldTmpERcRB_Sum.AsVariant := null;
    cdsTmpErBc.Next;
  end;
end;


procedure TfrmEditingReport.actInsertExecute(Sender: TObject);
begin
  if (Sender is TDBGridEh) then
    (Sender as TDBGridEh).DataSource.DataSet.Insert;
  if (Sender is TDBCtrlGrid) then
    (Sender as TDBCtrlGrid).DataSource.DataSet.Insert;
end;

procedure TfrmEditingReport.actInsertUpdate(Sender: TObject);
begin
  actInsert.Enabled :=
      ((cdsTmpER.State <> dsEdit) and (cdsTmpER.State <> dsInsert))
      and
      ((cdsTmpErBc.State <> dsEdit) and (cdsTmpErBc.State <> dsInsert))
end;

procedure TfrmEditingReport.actPrsnlAcntExecute(Sender: TObject);
begin
  frmPersonalAccount.ShowModal;
  with frmPersonalAccount, cdsTmpErBc do
  if ModalResult = mrOK then begin
    if not (State in [dsEdit, dsInsert]) then
      if IsEmpty then
        Insert
      else
        Edit;
    intgrfldTmpErBccPrsnlAcnt.Value := fbntgrfldpfbdtst1PA_ID.Value
  end;
end;

end.
