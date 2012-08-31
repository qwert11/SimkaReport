unit AuthorizationFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ChaildFrm, ActnList, DB, FIBDataSet, pFIBDataSet, Menus,
  ComCtrls, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids;

type
  TfrmAuthorization = class(TChaildForm)
    procedure btnSaveClick(Sender: TObject); override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAuthorization: TfrmAuthorization;

implementation

{$R *.dfm}

procedure TfrmAuthorization.btnSaveClick(Sender: TObject);
begin
  with pfbdtst1 do
  try

    QueryPrepare;

    case FEditorState of
      esEdit: with QUpdate do begin
        if edtPartCall.Text = NullAsStringValue then
          raise Exception.Create('Заполните поля');
        ParamByName('PC_ID').AsInteger := pfbdtst1.FieldByName('PC_ID').AsInteger;
        ParamByName('P_PC_ART_ALL').Value := edtPartCall.Text;
      end;

      esInsert: with QInsert do begin
        if edtPartCall.Text = NullAsStringValue then
          raise Exception.Create('Заполните поля');
        ParamByName('P_PC_ART_ALL').Value := edtPartCall.Text;
      end;

      esDelete: with QDelete do begin
        ParamByName('P_PC_ID').AsInteger := pfbdtst1.FieldByName('PC_ID').AsInteger;
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
