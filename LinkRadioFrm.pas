unit LinkRadioFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ChaildFrm, ActnList, DB, FIBDataSet, pFIBDataSet, Menus,
  ComCtrls, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, fib,
  DBGridEhGrouping, GridsEh, DBGridEh, AppEvnts;

type
  TfrmLinkRadio = class(TChaildForm)
    edtLinkRadio: TEdit;
    lbl1: TLabel;
    fbntgrfldpfbdtst1LR_ID: TFIBIntegerField;
    fpfbdtst1LR_INK_ADIO: TFIBStringField;
    procedure btnSaveClick(Sender: TObject); override;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLinkRadio: TfrmLinkRadio;

implementation

{$R *.dfm}

procedure TfrmLinkRadio.btnSaveClick(Sender: TObject);
begin
  with pfbdtst1 do
  try

    QueryPrepare;

    case FEditorState of
      esEdit: with QUpdate do begin
        ParamByName('P_LR_ID').AsInteger := pfbdtst1.FieldByName('LR_ID').AsInteger;
        ParamByName('P_LR_INK_ADIO').Value := edtLinkRadio.Text;
      end;

      esInsert: with QInsert do begin
        ParamByName('P_LR_INK_ADIO').Value := edtLinkRadio.Text;
      end;

      esDelete: with QDelete do begin
        ParamByName('P_LR_ID').AsInteger := pfbdtst1.FieldByName('LR_ID').AsInteger;
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

procedure TfrmLinkRadio.FormCreate(Sender: TObject);
begin
  inherited;
  FCheckComponents.Add(edtLinkRadio)
end;

end.
