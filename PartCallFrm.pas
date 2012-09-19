unit PartCallFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ChaildFrm, ActnList, DB, FIBDataSet, pFIBDataSet, Menus,
  ComCtrls, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, fib,
  DBGridEhGrouping, GridsEh, DBGridEh, AppEvnts;

type
  TfrmPartCall = class(TChaildForm)
    edtPartCall: TEdit;
    lbl1: TLabel;
    fbntgrfldpfbdtst1PC_ID: TFIBIntegerField;
    fbstrngfldpfbdtst1PC_ART_ALL: TFIBStringField;
    procedure btnSaveClick(Sender: TObject); override;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPartCall: TfrmPartCall;

implementation

{$R *.dfm}

procedure TfrmPartCall.btnSaveClick(Sender: TObject);
begin
  with pfbdtst1 do
  try

    QueryPrepare;

    case FEditorState of
      esEdit: with QUpdate do begin
        ParamByName('PC_ID').AsInteger := pfbdtst1.FieldByName('PC_ID').AsInteger;
        ParamByName('P_PC_ART_ALL').Value := edtPartCall.Text;
      end;

      esInsert: with QInsert do begin
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

procedure TfrmPartCall.FormCreate(Sender: TObject);
begin
  inherited;
  FCheckComponents.Add(edtPartCall)
end;

end.
