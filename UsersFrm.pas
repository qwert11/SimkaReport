unit UsersFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ChaildFrm, ActnList, DB, FIBDataSet, pFIBDataSet, Menus,
  ComCtrls, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, fib;

type
  TfrmUsers = class(TChaildForm)
    edtSurname: TEdit;
    edtName: TEdit;
    edtPatronymic: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    fbntgrfldpfbdtst1P_ID: TFIBIntegerField;
    fpfbdtst1P_SURNAME: TFIBStringField;
    fpfbdtst1P_NAME: TFIBStringField;
    fpfbdtst1P_PATRONYMIC: TFIBStringField;
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
        ParamByName('P_P_ID').AsInteger := pfbdtst1.FieldByName('P_ID').AsInteger;
        ParamByName('P_P_SURNAME').Value := edtSurname.Text;
        ParamByName('P_P_NAME').Value := StrToVarNull(edtName);
        ParamByName('P_P_PATRONYMIC').Value := StrToVarNull(edtPatronymic);
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

end.
