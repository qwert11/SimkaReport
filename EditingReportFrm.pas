unit EditingReportFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, DBGridEh, StdCtrls, Mask, DBCtrlsEh,
  DBLookupEh, pFIBDataSet, DBGridEhGrouping, GridsEh, Grids,
  MemTableDataEh, Db, DataDriverEh, DBClient, DBGrids, MConnect, ActnList,
  Menus, Buttons, FIBQuery, pFIBQuery, FIBDatabase, pFIBDatabase, dbcgrids;

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
    actSave: TAction;
    pfbtrnsctUpdate: TpFIBTransaction;
    pfbqryUpdate: TpFIBQuery;
    actApply: TAction;
    mniApply: TMenuItem;
    cdsTmpErBc: TClientDataSet;
    ds2: TDataSource;
    dbctrlgrd1: TDBCtrlGrid;
    lbl4: TLabel;
    lbl5: TLabel;
    edtSumMony: TDBNumberEditEh;
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
    procedure tmr1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbgrdhRepSIMKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actEditUpdate(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actSaveExecute(Sender: TObject);
    procedure actSaveUpdate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edtSum1KeyPress(Sender: TObject; var Key: Char);
    function CheckRepSimRecord(ShowWarning: Boolean = True): Boolean;
    procedure cdsTmpERBeforePost(DataSet: TDataSet);
    procedure dbgrdhRepSIMDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure actApplyExecute(Sender: TObject);
    procedure actApplyUpdate(Sender: TObject);
    procedure crncyfldTmpERcRB_SumGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
    FEditingReport: TEditingReport;
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
  old_rd_id: Integer; // ������������� ������ ReportDay

{$R *.dfm}

constructor TfrmEditingReport.Create(AOwner: TComponent;
  AEditingReport: TEditingReport);
begin
  inherited Create(AOwner);
  FEditingReport := AEditingReport;
end;

// ����� ������ 
procedure TfrmEditingReport.tmr1Timer(Sender: TObject);
begin
  stat1.Panels[PNL_INF_TIMER].Text := TimeToStr(Now - TimerStop)
end;

//check users
procedure TfrmEditingReport.FormActivate(Sender: TObject);

  procedure DupIgnore(ADS: TDataSet; AField: TIntegerField);
  begin

  end;
begin
  { TODO 5 : ���������������� � �������� ���� �� ������ }
  if user.login = DEF_USER then begin
{$IFDEF TESTMODE}
{$ELSE}
    MessageBox(0, '�������� ����� � ������', '������', MB_ICONERROR);
    Exit;
{$ENDIF}
  end;

  TimerStop := Time;

  // ������ edit-��
  ClearEdit(Self);

  Caption := '�������: ' + DateToStr(Date) + ' ' +
    user.Surname + ' ' + user.Name[1] + '.' + user.Patronymic[1] + '.';

  if not cdsTmpER.Active then
    cdsTmpER.CreateDataSet;

  if not cdsTmpErBc.Active then
    cdsTmpErBc.CreateDataSet;

  with frmMain.dbgrdh1.DataSource.DataSet do
    try
      // �������� ������� ���������� ����� ���������� - ��������
      cdsTmpER.BeforePost := nil;   {*}
      //cdsTmpER.BeforeInsert := nil; {*}
      { TODO -oFormActive -cCheck  : �������� � ��� ����� �� ���������� OnBefoInsert � ��� � ��� �������� }

      case FEditingReport of
        erEdit, erInsert:
          begin

            case FEditingReport of
              erEdit: begin
                if IsEmpty then
                  Exit;

                // ���������� ������������� ������ ReportDay
                old_rd_id := FieldByName('RD_ID').Value;
                
                stat1.Panels[PNL_INF_STAT_EDIT].Text := '�������������� ������: ' +
                  FieldByName('RD_ID').AsString;
                stat1.Panels[PNL_INF_RESPONS].Text := '����� ��������: ' +
                  FieldByName('RE_SURNAME').AsString;
              end;

              erInsert: begin
                dtpDate.Date := Date;
                stat1.Panels[PNL_INF_STAT_EDIT].Text := '����� ������';
                stat1.Panels[PNL_INF_RESPONS].Text := '����� ��������: ' +
                  user.Surname + ' ' + user.Name[1] + '.' + user.Patronymic[1] + '.';
                actSave.Enabled := False;
              end;
            end;

            // CDS TmpErBC ���������� ���� � ���������� ���������� ���� ��� ����
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
                      Application.MessageBox(PChar(E.Message), '������ ���������� ������', MB_ICONERROR);
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
                  Application.MessageBox(PChar(E.Message), '������ ���������� ������', MB_ICONERROR);
                  Break;
                end;
              end;
            end;
          end;
      else
        raise EAbort.Create('�������� ��� �������� Editing Report');
      end;
    finally
      // ������� ���������� �������� ����� - ���������
      cdsTmpER.BeforePost := cdsTmpERBeforePost;    {*}
      //cdsTmpER.BeforeInsert := cdsTmpERBeforePost;  {*}
    end;
end;

// ������� �� ������
procedure TfrmEditingReport.dbgrdhRepSIMKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
    actEditExecute(nil);
end;

procedure TfrmEditingReport.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CloseAllCombobox(Self)
end;

// �������� ���� �������������� 
procedure TfrmEditingReport.actEditUpdate(Sender: TObject);
begin
  with dbgrdhRepSIM.Columns[dbgrdhRepSIM.SelectedIndex] do
      (Sender as TAction).Enabled := (FieldName = FN_ER_LOOKUP_SIMKA) or
      (FieldName = FN_ER_LOOKUP_DEVICE) or (FieldName = FN_ER_LOOKUP_OWNER);
end;

procedure TfrmEditingReport.actEditExecute(Sender: TObject);
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


{ TODO -ocdsTmpER -cSort : ���������� �� ����� �� head }
procedure TfrmEditingReport.actSaveExecute(Sender: TObject);
var
  RDB_DB_KEY_LAST_REPORT_DAY: Integer;
begin
  { DONE 5 -oUpdate -cChecked : ��������� ��������� ������ }
  ModalResult := mrNone;

  with cdsTmpER do begin
    First;
    while not Eof do
      if CheckRepSimRecord then
        Next
      else
        Exit;
  end;

  with pfbqryUpdate, pfbtrnsctUpdate do
  try
    StartTransaction;
    Close;

    case FEditingReport of
{ TODO 5 -oEdit -cSave : � edit �������� ��������� ������� ��� �������� ������ }    
      erEdit: begin
        SQL.Text := 'ALTER INDEX REPORT_DAY_DATE INACTIVE';
        ExecQuery;
        Close;

        SQL.Text := 'UPDATE REPORT_DAY SET RD_DATE = ''' + DateToStr(dtpDate.Date) + ''', ' +
            'RD_FINANCE1 = ' + VarToStr(cbbIDAccount1.KeyValue) + ', ' +
            'RD_FNCE1SUM = ' + ToStrPoint(edtSum1.Text) + ', ' +
            'RD_FINANCE2 = ' + VarToStr(cbbIDAccount2.KeyValue) + ', ' +
            'RD_FNCE2SUM = ' + ToStrPoint(edtSum2.Text) + ', ' +
            'RD_RESPONS = ' + IntToStr(user.ID) + ' ' +
            'WHERE RD_ID = ' + IntToStr(old_rd_id);
        ExecQuery;
        Close;

        SQL.Text := 'ALTER INDEX REPORT_DAY_DATE ACTIVE';
        ExecQuery;
        Close;

        with cdsTmpER do begin
          First;
          while not Eof do begin
            pfbqryUpdate.Close;
            SQL.Text := 'UPDATE REPORT_SIMKA SET RS_SIMKA = ' + intgrfldTmpERcSimka.AsString + ', ' +
                'RS_IN = ' + intgrfldTmpERcIn.AsString + ', ' +
                'RS_SMS = ' + intgrfldTmpERcSMS.AsString + ', ' +
                'RS_REPORTDAY = ' + IntToStr(old_rd_id) + ', ' +
                'RS_OWNER = ' + intgrfldTmpERcOwner.AsString + ', ' +
                'RS_BALANCE = ' + crncyfldTmpERcBalance.AsString + ' ' +
                'WHERE RSID = ' + intgrfldTmpERcIDRepSim.AsString;
            ExecQuery;
            Next;
          end;
        end;
      end;

      erInsert: begin
        SQL.Text := 'ALTER INDEX REPORT_DAY_DATE INACTIVE';
        ExecQuery;
        Close;

        SQL.Text := 'INSERT INTO REPORT_DAY (RD_DATE, RD_FINANCE1, RD_FNCE1SUM, RD_FINANCE2, RD_FNCE2SUM, RD_RESPONS) VALUES ' +
            '(''' + DateToStr(dtpDate.Date) + ''',' + VarToStr(cbbIDAccount1.KeyValue) + ', ' + ToStrPoint(edtSum1.Text) + ', ' +
            VarToStr(cbbIDAccount2.KeyValue) + ', ' + ToStrPoint(edtSum2.Text) + ', ' + IntToStr(user.ID) + ') RETURNING RD_ID';
        {$IFDEF DEBUG}      // TESTMODE
        ShowMessage(SQL.Text);
        Abort;
        {$ENDIF}
        ExecQuery;
        RDB_DB_KEY_LAST_REPORT_DAY := Fields[0].AsInteger;

        SQL.Text := 'ALTER INDEX REPORT_DAY_DATE ACTIVE';
        ExecQuery;
        Close;

        with cdsTmpER do begin
          First;
          while not Eof do begin
            pfbqryUpdate.Close;
            SQL.Text := 'INSERT INTO REPORT_SIMKA (RS_SIMKA, RS_IN, RS_SMS, RS_REPORTDAY, RS_OWNER, RS_BALANCE) VALUES ' + '(' +
                intgrfldTmpERcSimka.AsString + ', ' + intgrfldTmpERcIn.AsString + ', ' +
                intgrfldTmpERcSMS.AsString + ', ' + IntToStr(RDB_DB_KEY_LAST_REPORT_DAY) + ', ' +
                intgrfldTmpERcOwner.AsString + ', ' + crncyfldTmpERcBalance.AsString + ')';
            {$IFDEF DEBUG}      // TESTMODE
            ShowMessage(SQL.Text);
            Abort;
            {$ENDIF}
            ExecQuery;
            Next;
          end;
        end;
      end;
    else
      raise Exception.Create('�� ���������� ��������� ��������������!' + #13#10 +
        '���������� � ������������');
    end;

    Commit;
    Close;
    Active := False;
  except
    on E: Exception do begin
      Rollback;
      Application.MessageBox(PChar(E.Message), '������', MB_ICONERROR);
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
  // ���� (�������), ID �������� ����� 1,2 � ����� 1,2
  // ��������� ������ ������
  // ����� ������
  bEnabled := True;

  if Trunc(dtpDate.Date) <> Trunc(Date) then
    dtpDate.Color := clRed
  else
    dtpDate.Color := clWindow;

  if cdsTmpER.IsEmpty then
    bEnabled := False;

  if not Check(cbbIDAccount1) or not CheckFloat(edtSum1) or
    not Check(cbbIDAccount2) or not CheckFloat(edtSum2) then
    bEnabled := False;

  if cdsTmpER.State <> dsBrowse then
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

procedure TfrmEditingReport.edtSum1KeyPress(Sender: TObject;
  var Key: Char);
begin
  MaskKeyEdit(Sender, Key, ['0'..'9',DecimalSeparator]);
end;

{ DONE 5 -oBeforePost -cCheck :
post � Insert(������) � Insert(���������� ����.������) � Edit �� ReportSim � ���������� �������������  ������ }
// �������� ������
function TfrmEditingReport.CheckRepSimRecord(ShowWarning: Boolean = True): Boolean;

  function CheckField(F: TField): Boolean;
    procedure ShowsWarning(F: TField);
    const
      COUNT_SHOWS = 3;
    var
      I: Integer;
    begin
      tmr1.Enabled := False;
      try
        for I := 1 to COUNT_SHOWS do begin
          stat1.Panels[PNL_INF_TIMER].Text := '������� � ' +
            dbgrdhRepSIM.FieldColumns[F.FieldName].Title.Caption;
          stat1.Refresh;
          Delay(400);
          stat1.Panels[PNL_INF_TIMER].Text := '';
          stat1.Refresh;
          Delay(100);
        end;
      finally
        tmr1.Enabled := True;
      end;
    end;
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
      ShowsWarning(F);
  end;
begin
  Result := False;
  if not CheckField(intgrfldTmpERcSimka) then
    Exit;
  if not CheckField(crncyfldTmpERcBalance) then
    Exit;
  if not CheckField(intgrfldTmpERcSMS) then
    Exit;
  if not CheckField(intgrfldTmpERcIn) then
    Exit;
  if not CheckField(intgrfldTmpERcOwner) then
    Exit;
  Result := True;
end;

{ TODO -oFormActive -cCheck  : ��� - �� EOF �������� �� IsEmpty }

procedure TfrmEditingReport.cdsTmpERBeforePost(DataSet: TDataSet);
begin
  if not CheckRepSimRecord then
    Abort;
end;
{ TODO 1 : apply }
{ TODO 5 -cCheck : �������� �������� ������ (������ ��� edit � insert)}

procedure TfrmEditingReport.dbgrdhRepSIMDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
  procedure SetFormatingCell(ErrorColor: TColor);
  begin
    with dbgrdhRepSIM.Canvas do begin
      Brush.Color := clRed;
      FillRect(Rect);
      Font.Color := clWhite;
      if Column.Field.DataType = ftString then
      //� ��������� ����� ����� ����������� �����
        TextOut(Rect.Left + 2, Rect.Top + 2, Column.Field.Text)
      else
      //� ��������� ����� � ������
        TextOut(Rect.Right - TextWidth(Column.Field.Text) -
          2, Rect.Top + 2, Column.Field.Text)
    end;
  end;
  { TODO  -oDrawCellColum -cCheck : ��������� �-��� FindDiff ��� erEdit - ������� �������  ��� ��������� ���� CONST}
//  function FindDiff: Boolean;
//  begin
//
//  end;
begin

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
  cdsTmpER.Post
end;

procedure TfrmEditingReport.actApplyUpdate(Sender: TObject);
begin
  actApply.Enabled := (cdsTmpER.State = dsEdit) or (cdsTmpER.State =  dsInsert)
end;

procedure TfrmEditingReport.crncyfldTmpERcRB_SumGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if VarIsNull(intgrfldTmpERcRS_Balance.Value) then
    Text := VarToStr(cdsTmpErBc.Lookup('cPrsnlAcnt', intgrfldTmpERcRS_Balance.Value, []))
  else
    Text := crncyfldTmpERcRS_BalanceSum.AsString
end;

end.
