unit OperatorsFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ChaildFrm, ActnList, DB, FIBDataSet, pFIBDataSet, Menus,
  ComCtrls, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, fib,
  DBGridEhGrouping, GridsEh, DBGridEh, AppEvnts;

type
  TfrmOperators = class(TChaildForm)
    edtOperatorLink: TEdit;
    lbl1: TLabel;
    fbntgrfldpfbdtst1OL_ID: TFIBIntegerField;
    fpfbdtst1OL_PERATOR_INK: TFIBStringField;
    procedure btnSaveClick(Sender: TObject); override;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOperators: TfrmOperators;

implementation

{$R *.dfm}

procedure TfrmOperators.btnSaveClick(Sender: TObject);
begin
  with pfbdtst1 do
  try

    QueryPrepare;

    case FEditorState of
      esEdit: with QUpdate do begin
        ParamByName('P_OL_ID').AsInteger := pfbdtst1.FieldByName('OL_ID').AsInteger;
        ParamByName('P_OL_PERATOR_INK').Value := edtOperatorLink.Text;
      end;

      esInsert: with QInsert do begin
        ParamByName('P_OL_PERATOR_INK').Value := edtOperatorLink.Text;
      end;

      esDelete: with QDelete do begin
        ParamByName('P_OL_ID').AsInteger := pfbdtst1.FieldByName('OL_ID').AsInteger;
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

procedure TfrmOperators.FormCreate(Sender: TObject);
begin
  inherited;
  FCheckComponents.Add(edtOperatorLink)
end;

end.
