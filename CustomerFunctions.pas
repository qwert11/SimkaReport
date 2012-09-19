unit CustomerFunctions;

interface

uses
  IniFiles, SysUtils, StdCtrls, Windows, DBCtrlsEh,
  DBLookupEh, Forms, pFIBDataSet, Classes, Controls, Variants,
  FIBQuery, DBCtrls, DBGridEh;

type
  TMask = set of Char;

function GetShortNumber(S: string; ShortCount: Integer): string;

function MergeResult(const arr: array of string): string;

function DiffSum(sum1, sum2: Variant): Real;

function ReadIni(ASection, AString : String; ADef: Integer) : Variant; overload;
function ReadIni(ASection, AString : String; ADef: string) : Variant; overload;
function ReadIni(ASection, AString : String; ADef: Boolean) : Variant; overload;
function ReadIni(ASection, AString : String; ADef: Double) : Variant; overload;

function ToStrNull(S: string): string; overload;
function ToStrNull(V: Variant): string; overload;
function ToStrNull(edt: TEdit): string; overload;

function StrToVarNull(S: string): Variant; overload;
function StrToVarNull(edt: TEdit): Variant; overload;

function EditFieldInt(FIBXSQLVAR: TFIBXSQLVAR; const AValue: string): Boolean;
function EditFieldFlt(FIBXSQLVAR: TFIBXSQLVAR; const AValue: string): Boolean;
procedure CloseAllCombobox(Form: TForm);

function TestInteger(A: string; SilentExcept: Boolean = True): Boolean;
function TestFloat(A: string; SilentExcept: Boolean = True): Boolean;


function ToStrPoint(Value: Real): string; overload;
function ToStrPoint(Value: string): string; overload;

function BoolToChar(B: Boolean; UseBoolChr: Boolean = False): Char;
function CharToBool(IsCheck: Variant): Boolean;

procedure MaskKeyEdit(Sender: TObject; var Key: Char; AMask: TMask);

procedure ClearEdit(frm: TForm);
procedure CloseTDBLookupComboboxEh(frm: TForm);
procedure SetDblkCbbFrom_IbTbl_Frm(Frm: TForm; Cbb: TDBLookupComboboxEh;
  tbl: TpFIBDataSet; DM: TDataModule);
procedure Delay(MiliSeconds: Integer);

implementation

uses CustomerGlobals;

function GetShortNumber(S: string; ShortCount: Integer): string;
begin
  Result := S;
  if ShortCount > Length(S) then
    Exit;
  Result := Copy(S, Length(S) - ShortCount, ShortCount) + //'(' + IntToStr(ShortCount) + ')' +
    ' [' + Result + ']'
end;

function DiffSum(sum1, sum2: Variant): Real;
begin
  if VarIsNull(sum1) and VarIsNull(sum2) then
    Result := 0 else
  if VarIsNull(sum1) then
    Result := - sum2 else
  if VarIsNull(sum2) then
    Result := sum1 else
    Result := sum1 - sum2
end;

function MergeResult(const arr: array of string): string;
var
  I: Integer;
begin
  Result := '';
  for I := Low(arr) to High(arr) do
    Result := Result + arr[I] + ' '
end;

function CharToBool(IsCheck: Variant): Boolean;
var
  Check: string;
begin
  Result := False;

  if VarIsNull(IsCheck) then
    Exit;

  Check := VarToStr(IsCheck);

  if Length(Check) <> 1 then begin
    if Check <> NullAsStringValue then
      Result := StrToBool(Check);
    Exit;
  end;

  if (Check = 't') or (Check = 'T') or (Check = '1') then
    Result := True
  else
    Result := False
end;

function BoolToChar(B: Boolean; UseBoolChr: Boolean = False): Char;
begin
  if UseBoolChr then begin
    if B then
      Result := 'T'
    else
      Result := 'F'
  end else begin
    if B then
      Result := '1'
    else
      Result := '0'
  end;
end;


procedure Delay(MiliSeconds: Integer);
const
  MIN_INTERVAL = 50;
var
  I,
  divMinInterval: Integer;
begin
  divMinInterval := MiliSeconds div MIN_INTERVAL;
  for I := 1 to divMinInterval do begin
    Application.ProcessMessages;
    Sleep(MIN_INTERVAL);
  end;
  Sleep(MiliSeconds - MIN_INTERVAL * divMinInterval);
end;


function ToStrNull(S: string): string;
begin
  Result := 'Null';
  if (S <> '') and (S <> null) then
    Result := S
end;

function ToStrNull(edt: TEdit): string;
begin
  Result := ToStrNull(edt.Text)
end;

function ToStrNull(V: Variant): string;
begin
  if VarIsNull(V) then
    Result := 'Null'
  else
    Result := VarToStr(V)
end;

function StrToVarNull(S: string): Variant;
begin
  Result := Null;
  if (S <> '') and (S <> null) then
    Result := S
end;

function StrToVarNull(edt: TEdit): Variant; overload;
begin
  Result := StrToVarNull(edt.Text)
end;  


function TestInteger(A: string; SilentExcept: Boolean): Boolean;
begin
  Result := False;
  try
    if A = '' then
      Exit;
    StrToInt(A);
    Result := True;
  except
    on EConvertError do begin
      if not SilentExcept then
        Application.MessageBox('Ошибка преобразования типа String to Integer',
          'Ошибка', MB_ICONERROR);
      Abort;
    end;
  end;
end;

function TestFloat(A: string; SilentExcept: Boolean): Boolean;
begin
  Result := False;
  try
    if A = '' then
      Exit;
    StrToFloat(A);
    Result := True;
  except
    on EConvertError do begin
      if not SilentExcept then
        Application.MessageBox('Ошибка преобразования типа String to Real', 'Ошибка', MB_ICONERROR);
      Abort;
    end;
  end;
end;


function findComa(s: string): Integer;
var
  I: Integer;
begin
  Result := -1;
  for I := 1 to Length(s) do
    case s[I] of
      ',', '.': Result := I;
    end;
end;

function ToStrPoint(Value: Real): string;
begin
  Result := FloatToStr(Value);
  if findComa(Result) < 0 then
    Result := Result + '.00'
  else
    Result[findComa(Result)] := '.'
end;

function ToStrPoint(Value: string): string;
begin
  try
    Result := FloatToStr(StrToFloat(Value))
  except
    Result := 'null';
    Abort;
  end;

  if findComa(Result) < 0 then
    Result := Result + '.00'
  else
    Result[findComa(Result)] := '.'
end;

function EditFieldInt(FIBXSQLVAR: TFIBXSQLVAR; const AValue: string): Boolean;
begin
  Result := False;
  try
    if AValue = NullAsStringValue then
      FIBXSQLVAR.Value := Null
    else begin
      if not TestInteger(AValue) then
        raise Exception.Create('Ошибка преобразования типов');
      FIBXSQLVAR.AsString := AValue;
    end;
    Result := True;
  except
    on E: Exception do begin
      Application.MessageBox(PChar(E.Message),
          'Ошибка', MB_ICONERROR);
      Abort;
    end;
  end;
end;


function EditFieldFlt(FIBXSQLVAR: TFIBXSQLVAR; const AValue: string): Boolean;
begin
  Result := False;
  try
    if AValue = NullAsStringValue then
      FIBXSQLVAR.Value := Null
    else begin
      if not TestFloat(AValue) then
        raise Exception.Create('Ошибка преобразования типов');
      FIBXSQLVAR.AsString := ToStrPoint(AValue);
    end;
    Result := True;
  except
    on E: Exception do begin
      Application.MessageBox(PChar(E.Message),
          'Ошибка', MB_ICONERROR);
      Abort;
    end;
  end;    
end;  

type
  TReadIni = (riString, riInteger, riBool, riDate, riFloat, riCurrency);
// читает настройки из ini файла
function ReadIniFile(ASection, AString : String; ADef: Variant; ReadIni: TReadIni) : Variant;
var
  sIniFile: TIniFile;
  sPath: String[60];
begin
  GetDir(0, sPath);
  sIniFile := TIniFile.Create(sPath + '\' + CONFIG_FILE);
  try
    case ReadIni of
      riString: Result := sIniFile.ReadString(ASection, AString, ADef);
      riInteger: Result := sIniFile.ReadInteger(ASection, AString, ADef);
      riBool: Result := sIniFile.ReadBool(ASection, AString, ADef);
      //riDate: Result := sIniFile.ReadDate(ASection, AString, ADef);
      riFloat: Result := sIniFile.ReadFloat(ASection, AString, ADef);
    end;
  finally
    sIniFile.Free;
  end;
end;

function ReadIni(ASection, AString : String; ADef: Integer) : Variant;
begin
  Result := ReadIniFile(ASection, AString, ADef, riInteger)
end;

function ReadIni(ASection, AString : String; ADef: string) : Variant;
begin
  Result := ReadIniFile(ASection, AString, ADef, riString)
end;

function ReadIni(ASection, AString : String; ADef: Boolean) : Variant;
begin
  Result := ReadIniFile(ASection, AString, ADef, riBool)
end;

function ReadIni(ASection, AString : String; ADef: Double) : Variant;
begin
  Result := ReadIniFile(ASection, AString, ADef, riFloat)
end;

// маска для TEdit
procedure MaskKeyEdit(Sender: TObject; var Key: Char; AMask: TMask);
begin                             // '0'..'9',DecimalSeparator
  if not (Sender is TEdit) then
    Abort;

  if Key = ',' then
    Key := DecimalSeparator; // запятую заменяем на разделитель для числа

  if Key = '.' then
    Key := DecimalSeparator; // точку заменяем на сепаратор (на всякий случай)

  if not ((Key in AMask) or (Key in [#8,#13]))  // символы которые пропускаются
    or ((Key = DecimalSeparator) // все цифры знак минус разделитель
    and (POS (DecimalSeparator, TEdit(Sender).Text) > 0)) // запрет на второй сепаратор
    or ((Key = '-') and (POS ('-', TEdit(Sender).Text) > 0)) // запрет на второй минус
    or ((Key = '-') and (TEdit(Sender).SelStart <> 0)) // запрет на минус не вначале цифры
    then // (можно и предыдущей строчки но так лучше для понимания)
  begin
    Key := #0; // запрещенный символ заменяем нулем
    MessageBeep (MB_OK); // биб в спикир
  end;
end;

procedure CloseTDBLookupComboboxEh(frm: TForm);
var
  I: Integer;
begin
  with frm do
  for I := 0 to ComponentCount - 1 do
    if Components[I] is TDBLookupComboboxEh then
      if (Components[I] as TDBLookupComboboxEh).ListVisible then
        (Components[I] as TDBLookupComboboxEh).CloseUp(True);
end;

procedure ClearEdit(frm: TForm);
var
  I: Integer;
begin
  with frm do
  for I := 0 to ComponentCount - 1 do
    if Components[I] is TEdit then
      (Components[I] as TEdit).Clear;
end;

//установка TDBLookupComboBox от TpFIBDataSet
procedure SetDblkCbbFrom_IbTbl_Frm(Frm: TForm; Cbb: TDBLookupComboboxEh;
  tbl: TpFIBDataSet; DM: TDataModule);
begin
  Frm.ShowModal;
  with DM, Cbb, tbl do
  if Frm.ModalResult = mrOk then
    KeyValue := Fields[0].AsInteger
  else
    KeyValue := null
end;

procedure CloseAllCombobox(Form: TForm);
var
  I: Integer;
begin
  with Form do
  for I := 0 to ComponentCount - 1 do
    if Components[I] is TDBLookupComboBox then
      if (Components[I] as TDBLookupComboBox).ListVisible then
        (Components[I] as TDBLookupComboBox).CloseUp(True);
end;

end.
