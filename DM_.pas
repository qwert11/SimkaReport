unit DM_;

interface

uses
  SysUtils, Classes, FIBDatabase, pFIBDatabase, DB, FIBDataSet, pFIBDataSet,
  FIBQuery, pFIBQuery, Variants;

type
  TDM = class(TDataModule)
    DB: TpFIBDatabase;
    pfbtrnsctn1: TpFIBTransaction;
    pfbtrnsView: TpFIBTransaction;
    ds1: TDataSource;
    pfbdtstView: TpFIBDataSet;
    fbdtfldViewRD_DATE: TFIBDateField;
    fbstrngfldViewTP_NAME: TFIBStringField;
    fbcdfldViewTP_ABON_BOARD: TFIBBCDField;
    fbntgrfldViewTP_SMS_MONTH: TFIBIntegerField;
    fbntgrfldViewRS_SMS: TFIBIntegerField;
    fbntgrfldViewD_NUM: TFIBIntegerField;
    fbstrngfldViewD_TITLE: TFIBStringField;
    fbstrngfldViewO_NAME: TFIBStringField;
    fbstrngfldViewS_NUMBER: TFIBStringField;
    fbntgrfldViewRS_SIMKA: TFIBIntegerField;
    fbntgrfldViewRS_OWNER: TFIBIntegerField;
    fbntgrfldViewRS_IN: TFIBIntegerField;
    fbntgrfldViewRSID: TFIBIntegerField;
    fbstrngfldViewTP_CLIR: TFIBStringField;
    fbcdfldViewTP_CLIR_PRICE: TFIBBCDField;
    fbstrngfldViewLR_INK_ADIO: TFIBStringField;
    fbstrngfldViewRS_STATUS: TFIBStringField;
    fbstrngfldViewPC_ART_ALL: TFIBStringField;
    fbstrngfldViewOL_PERATOR_INK: TFIBStringField;
    fbcdfldViewRB_SUM: TFIBBCDField;
    fbstrngfldViewU_SER: TFIBStringField;
    fbstrngfldViewU_LOCATION: TFIBStringField;
    fbstrngfldViewUB_SER_RUNCH: TFIBStringField;
    fbstrngfldViewRS_IFINSTALL: TFIBStringField;
    fbstrngfldViewRS_ICC_SIM: TFIBStringField;
    fbstrngfldViewRS_PUK1: TFIBStringField;
    fbstrngfldViewRS_PUK2: TFIBStringField;
    fbstrngfldViewPA_RSNL_CNT: TFIBStringField;
    fbstrngfldViewP_SURNAME: TFIBStringField;
    fbstrngfldViewP_NAME: TFIBStringField;
    fbstrngfldViewP_PATRONYMIC: TFIBStringField;
    fbntgrfldViewRS_TARIFPLAN: TFIBIntegerField;
    fbntgrfldViewRS_PART_CALL: TFIBIntegerField;
    fbdtfldViewRS_REPORTDAY: TFIBDateField;
    fbntgrfldViewRS_BALANCE: TFIBIntegerField;
    fbntgrfldViewRS_USER: TFIBIntegerField;
    fbntgrfldViewRS_USER_BRUNCH: TFIBIntegerField;
    fbntgrfldViewRB_PRSNL_ACNT: TFIBIntegerField;
    fbntgrfldViewRD_RESPONS: TFIBIntegerField;
    fbstrngfldViewRS_RADRSNG_ALL: TFIBStringField;
    fbstrngfldViewRS_RADRSNG_BUSY: TFIBStringField;
    fbstrngfldViewRS_RADRSNG_NOANSWR: TFIBStringField;
    fbstrngfldViewRS_RADRSNG_OUTSD: TFIBStringField;
    fbntgrfldViewRS_NUM_ALL: TFIBIntegerField;
    fbntgrfldViewRS_NUM_BUSY: TFIBIntegerField;
    fbntgrfldViewRS_NUM_NOANSWR: TFIBIntegerField;
    fbntgrfldViewRS_NUM_OUTSD: TFIBIntegerField;
    fbstrngfldViewS_NUMBER1: TFIBStringField;
    fbstrngfldViewS_NUMBER2: TFIBStringField;
    fbstrngfldViewS_NUMBER3: TFIBStringField;
    fbstrngfldViewS_NUMBER4: TFIBStringField;
    fbdtfldViewOLD_DAY: TFIBDateField;
    fbcdfldViewOLD_SUM: TFIBBCDField;
    fbntgrfldViewS_SHORT_NUM: TFIBIntegerField;
    procedure fbstrngfldViewRE_SURNAMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure fbcdfldViewOLD_SUMGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure fbstrngfldViewS_NUMBERGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses CustomerFunctions;

{$R *.dfm}

procedure TDM.fbstrngfldViewRE_SURNAMEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
  function Get_N_P(const N, P: string): string;
    function GetI(I: string): string;
    begin
      if I = '' then
        Result := ''
      else
        Result := I[1] + '.'
    end;
  begin
    Result := GetI(N) + GetI(P)
  end;
begin
  Text := fbstrngfldViewP_SURNAME.AsString + ' ' +
    Get_N_P(fbstrngfldViewP_NAME.AsString, fbstrngfldViewP_PATRONYMIC.AsString) 
end;

procedure TDM.fbcdfldViewOLD_SUMGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
var
  old_sum: Integer;
begin
  if VarIsNull(fbcdfldViewOLD_SUM.Value) then
    old_sum := 0
  else
    old_sum := fbcdfldViewOLD_SUM.Value;
  Text := VarToStr(fbcdfldViewRB_SUM.Value - old_sum) + ' гр'
end;

procedure TDM.fbstrngfldViewS_NUMBERGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text := GetShortNumber(fbstrngfldViewS_NUMBER.AsString, fbntgrfldViewS_SHORT_NUM.Value)
end;

end.
