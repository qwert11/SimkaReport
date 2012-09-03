unit AuthorizationFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ChaildFrm, ActnList, DB, FIBDataSet, pFIBDataSet, Menus,
  ComCtrls, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DBGridEh, Mask,
  DBCtrlsEh, DBLookupEh, fib;

type
  TfrmAuthorization = class(TChaildForm)
    fpfbdtst1P_SURNAME: TFIBStringField;
    fpfbdtst1P_NAME: TFIBStringField;
    fpfbdtst1P_PATRONYMIC: TFIBStringField;
    fpfbdtst1A_PASSWORD: TFIBStringField;
    fpfbdtst1A_LOGIN: TFIBStringField;
    cbbPeople: TDBLookupComboboxEh;
    btnPeople: TSpeedButton;
    edtPassoword: TEdit;
    edtLogin: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    fbntgrfldpfbdtst1A_ID: TFIBIntegerField;
    procedure btnSaveClick(Sender: TObject); override;
    procedure FormCreate(Sender: TObject);
    procedure btnPeopleClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAuthorization: TfrmAuthorization;

implementation

uses PeopleFrm;

{$R *.dfm}

procedure TfrmAuthorization.btnSaveClick(Sender: TObject);
begin
  with pfbdtst1 do
  try

    QueryPrepare;

    case FEditorState of
      esEdit: with QUpdate do begin
        ParamByName('P_A_ID').AsInteger := pfbdtst1.FieldByName('A_ID').AsInteger;
        ParamByName('P_A_LOGIN').Value := edtLogin.Text;
        ParamByName('P_A_PASSWORD').Value := edtPassoword.Text;
      end;

      esInsert: with QInsert do begin
        ParamByName('P_A_LOGIN').Value := edtLogin.Text;
        ParamByName('P_A_PASSWORD').Value := edtPassoword.Text;
      end;

      esDelete: with QDelete do begin
        ParamByName('P_A_ID').AsInteger := pfbdtst1.FieldByName('A_ID').AsInteger;
      end;
    end;
    
    inherited;
  except
    on EFIBError do begin
      Application.MessageBox('Обратитесь к разработчику',
          'Ошибка базы данных', MB_ICONERROR);
      Abort;
    end;
    on E: Exception do begin
      Application.MessageBox(PChar(E.Message + #13#10 +
          'Введите верные данные и повторите попытку'),
          'Ошибка', MB_ICONERROR);
      Abort;
    end;
  end;
end;

procedure TfrmAuthorization.FormCreate(Sender: TObject);
begin
  inherited;
{$IFDEF TESTMODE}
  edtPassoword.PasswordChar := #0;
{$ELSE}
  edtPassoword.PasswordChar := '*';
{$ENDIF}
  FCheckComponents.Add(cbbPeople);
  FCheckComponents.Add(edtLogin);
  FCheckComponents.Add(edtPassoword);
end;

procedure TfrmAuthorization.btnPeopleClick(Sender: TObject);
begin
  inherited;
  frmPeople.ShowModal;
  with frmPeople do begin
    if ModalResult <> mrOK then
      Exit;
    cbbPeople.KeyValue := fbntgrfldpfbdtst1P_ID.Value;
  end;
end;

end.
