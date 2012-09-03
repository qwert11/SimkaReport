unit UserBrunchFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ChaildFrm, ActnList, DB, FIBDataSet, pFIBDataSet, Menus,
  ComCtrls, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, fib;

type
  TfrmUserBrunch = class(TChaildForm)
    edtUserBrunch: TEdit;
    lbl1: TLabel;
    fbntgrfldpfbdtst1UB_ID: TFIBIntegerField;
    fbstrngfldpfbdtst1UB_SER_RUNCH: TFIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure btnSaveClick(Sender: TObject); override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUserBrunch: TfrmUserBrunch;

implementation

{$R *.dfm}

procedure TfrmUserBrunch.FormCreate(Sender: TObject);
begin
  inherited;
  FCheckComponents.Add(edtUserBrunch)
end;

procedure TfrmUserBrunch.btnSaveClick(Sender: TObject);
begin
  with pfbdtst1 do
  try

    QueryPrepare;

    case FEditorState of
      esEdit: with QUpdate do begin
        ParamByName('P_UB_ID').AsInteger := pfbdtst1.FieldByName('UB_ID').AsInteger;
        ParamByName('P_UB_SER_RUNCH').Value := edtUserBrunch.Text;
      end;

      esInsert: with QInsert do begin
        ParamByName('P_UB_SER_RUNCH').Value := edtUserBrunch.Text;
      end;

      esDelete: with QDelete do begin
        ParamByName('P_UB_ID').AsInteger := pfbdtst1.FieldByName('UB_ID').AsInteger;
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
