unit PersonalAccountFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ChaildFrm, ActnList, DB, FIBDataSet, pFIBDataSet, Menus,
  ComCtrls, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, fib,
  DBGridEhGrouping, GridsEh, DBGridEh, AppEvnts;

type
  TfrmPersonalAccount = class(TChaildForm)
    edtPersonalAccount: TEdit;
    lbl1: TLabel;
    fbntgrfldpfbdtst1PA_ID: TFIBIntegerField;
    fbstrngfldpfbdtst1PA_RSNL_CNT: TFIBStringField;
    procedure btnSaveClick(Sender: TObject); override;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPersonalAccount: TfrmPersonalAccount;

implementation

{$R *.dfm}

procedure TfrmPersonalAccount.btnSaveClick(Sender: TObject);
begin
  with pfbdtst1 do
  try

    QueryPrepare;

    case FEditorState of
      esEdit: with QUpdate do begin
        ParamByName('P_PA_ID').AsInteger := pfbdtst1.FieldByName('PA_ID').AsInteger;
        ParamByName('P_PA_RSNL_CNT').Value := edtPersonalAccount.Text;
      end;

      esInsert: with QInsert do begin
        ParamByName('P_PA_RSNL_CNT').Value := edtPersonalAccount.Text;
      end;

      esDelete: with QDelete do begin
        ParamByName('P_PA_ID').AsInteger := pfbdtst1.FieldByName('PA_ID').AsInteger;
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

procedure TfrmPersonalAccount.FormCreate(Sender: TObject);
begin
  inherited;
  FCheckComponents.Add(edtPersonalAccount)
end;

end.
