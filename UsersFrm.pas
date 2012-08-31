unit UsersFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ChaildFrm, ActnList, DB, FIBDataSet, pFIBDataSet, Menus,
  ComCtrls, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids;

type
  TfrmUsers = class(TChaildForm)
    edtSurname: TEdit;
    edtName: TEdit;
    edtPatronymic: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    procedure btnSaveClick(Sender: TObject); override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUsers: TfrmUsers;

implementation

uses CustomerFunctions;

{$R *.dfm}

procedure TfrmUsers.btnSaveClick(Sender: TObject);
begin
  with pfbdtst1 do
  try

    QueryPrepare;

    case FEditorState of
      esEdit: with QUpdate do begin
        if edtSurname.Text = NullAsStringValue then
          raise Exception.Create('��������� ����');

        ParamByName('P_P_ID').AsInteger := pfbdtst1.FieldByName('P_ID').AsInteger;
        ParamByName('P_P_SURNAME').Value := edtLinkRadio.Text;
        ParamByName('P_P_NAME').Value := ToStrNull(edtName);
        ParamByName('P_P_PATRONYMIC').Value := ToStrNull(edtPatronymic);

      end;

      esInsert: with QInsert do begin
        if edtSurname.Text = NullAsStringValue then
          raise Exception.Create('��������� ����');

        ParamByName('P_P_ID').AsInteger := pfbdtst1.FieldByName('P_ID').AsInteger;
        ParamByName('P_P_SURNAME').Value := edtLinkRadio.Text;
        ParamByName('P_P_NAME').Value := ToStrNull(edtName);
        ParamByName('P_P_PATRONYMIC').Value := ToStrNull(edtPatronymic);          
      end;

      esDelete: with QDelete do begin
        ParamByName('P_P_ID').AsInteger := pfbdtst1.FieldByName('P_ID').AsInteger;
      end;
    end;

    inherited;
  except
    on EFIBError do begin
      Application.MessageBox('���������� � ������������',
          '������ ���� ������', MB_ICONERROR);
      Abort;
    end;
    on E: Exception do begin
      Application.MessageBox(PChar(E.Message + #13#10 +
          '������� ������ ������ � ��������� �������'),
          '������', MB_ICONERROR);
      Abort;
    end;
  end;
end;

end.
