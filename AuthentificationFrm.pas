unit AuthentificationFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEh, DBCtrlsEh, DBLookupEh, StdCtrls, Mask, Buttons;

type
  TfrmAuthentification = class(TForm)
    txtRegistration: TStaticText;
    cbbLogin: TDBLookupComboboxEh;
    btn1: TBitBtn;
    edtPassword: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure txtRegistrationClick(Sender: TObject);
    procedure edtPasswordClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAuthentification: TfrmAuthentification;

implementation

uses CustomerGlobals, RegistrationFrm, AuthorizationFrm;

var
  CountEnter: Integer = 0;

{$R *.dfm}

procedure TfrmAuthentification.btn1Click(Sender: TObject);
begin
  ModalResult := mrNone;
  Inc(CountEnter);
  if CountEnter > 15 then begin
    ShowMessage('Вы исчерпали на сегодня лимит попыток входа. ' +
      'Не отчаивайтесь. Попробуйте зайти завтра. ;-)');
    Exit;
  end;
  {$IFDEF NOT TESTMODE}
  with frmAuthorization, user do begin
    if  (edtPassword.Text <> fpfbdtst1A_LOGIN.Value) or
        (cbbLogin.KeyValue <> fbntgrfldpfbdtst1A_ID.Value) then begin
      Application.MessageBox('Введите верно логин и пароль',
        PChar('Предупреждение №' + IntToStr(CountEnter)), MB_ICONWARNING);
      Exit
    end;
    login := fpfbdtst1A_LOGIN.Value;
    ID := fbntgrfldpfbdtst1A_ID.Value;
    Surname := fpfbdtst1P_SURNAME.Value;
    Name := fpfbdtst1P_NAME.Value;
    Patronymic := fpfbdtst1P_PATRONYMIC.Value;
  end;
  {$ENDIF}
  ModalResult := mrOk
end;

procedure TfrmAuthentification.txtRegistrationClick(Sender: TObject);
begin
  {$IFDEF TESTMODE}
  frmAuthorization.Show
  {$ELSE}
  frmRegistration.ShowModal
  {$ENDIF}
end;

procedure TfrmAuthentification.edtPasswordClick(Sender: TObject);
begin
  edtPassword.SelectAll
end;

end.
