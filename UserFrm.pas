unit UserFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ChaildFrm, ActnList, DB, FIBDataSet, pFIBDataSet, Menus,
  ComCtrls, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, fib;

type
  TfrmUser = class(TChaildForm)
    edtUser: TEdit;
    lbl1: TLabel;
    edtUserLocation: TEdit;
    lbl2: TLabel;
    procedure btnSaveClick(Sender: TObject); override;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUser: TfrmUser;

implementation

{$R *.dfm}

procedure TfrmUser.btnSaveClick(Sender: TObject);
begin
  with pfbdtst1 do
  try

    QueryPrepare;

    case FEditorState of
      esEdit: with QUpdate do begin
        ParamByName('P_U_ID').AsInteger := pfbdtst1.FieldByName('U_ID').AsInteger;
        ParamByName('P_U_SER').Value := edtSurname.Text;
        ParamByName('P_U_LOCATION').Value := StrToVarNull(edtName);
      end;

      esInsert: with QInsert do begin
        ParamByName('P_P_SURNAME').Value := edtSurname.Text;
        ParamByName('P_P_NAME').Value := StrToVarNull(edtName);
        ParamByName('P_P_PATRONYMIC').Value := StrToVarNull(edtPatronymic);
      end;

      esDelete: with QDelete do begin
        ParamByName('P_P_ID').AsInteger := pfbdtst1.FieldByName('P_ID').AsInteger;
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

procedure TfrmUser.FormCreate(Sender: TObject);
begin
  inherited;
  FCheckComponents.Add(edtUser)
end;

end.
