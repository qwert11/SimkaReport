unit SimkaFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ChaildFrm, ActnList, Menus, StdCtrls, Buttons, ExtCtrls, Grids,
  DBGrids, DB, FIBDataSet, pFIBDataSet, DBCtrls, fib, ComCtrls, DBGridEh,
  Mask, DBCtrlsEh, DBLookupEh;

type
  TfrmSimka = class(TChaildForm)
    edtNumber: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    btnLinkRadio: TSpeedButton;
    btnOperator: TSpeedButton;
    cbbOperator: TDBLookupComboboxEh;
    lbl3: TLabel;
    cbbLinkRadio: TDBLookupComboboxEh;
    pfbdtst1SID: TFIBIntegerField;
    pfbdtst1S_NUMBER: TFIBStringField;
    pfbdtst1S_LINK_RADIO: TFIBIntegerField;
    pfbdtst1S_OPERATOR: TFIBIntegerField;
    procedure btnSaveClick(Sender: TObject); override;
    procedure btnLinkRadioClick(Sender: TObject);
    procedure edtNumberKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btnOperatorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSimka: TfrmSimka;

implementation

uses CustomerFunctions, LinkRadioFrm, OperatorsFrm;

{$R *.dfm}

procedure TfrmSimka.btnSaveClick(Sender: TObject);
begin
  with pfbdtst1 do
  try

    QueryPrepare;

    case FEditorState of
      esEdit: with QUpdate do begin
        ParamByName('P_SID').AsInteger := pfbdtst1.FieldByName('SID').AsInteger;
        ParamByName('P_S_LINK_RADIO').Value := cbbLinkRadio.KeyValue;
        ParamByName('P_S_NUMBER').AsString := edtNumber.Text;
        ParamByName('P_S_OPERATOR').AsString := edtNumber.Text;
      end;

      esInsert: with QInsert do begin
        ParamByName('P_S_LINK_RADIO').Value := cbbLinkRadio.KeyValue;
        ParamByName('P_S_NUMBER').AsString := edtNumber.Text;
        ParamByName('P_S_OPERATOR').AsString := edtNumber.Text;
      end;

      esDelete: with QDelete do begin
        ParamByName('P_SID').AsInteger := pfbdtst1.FieldByName('SID').AsInteger;
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

procedure TfrmSimka.btnLinkRadioClick(Sender: TObject);
begin
  inherited;
  frmLinkRadio.ShowModal;
  with frmLinkRadio do begin
    if ModalResult <> mrOK then
      Exit;
    cbbLinkRadio.KeyValue := fbntgrfldpfbdtst1LR_ID.Value;
  end;
end;

procedure TfrmSimka.edtNumberKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  MaskKeyEdit(Sender, Key, ['0'..'9']);
end;

procedure TfrmSimka.FormCreate(Sender: TObject);
begin
  inherited;
  FCheckComponents.Add(edtNumber);
  FCheckComponents.Add(cbbLinkRadio);
  FCheckComponents.Add(cbbOperator);
end;

procedure TfrmSimka.btnOperatorClick(Sender: TObject);
begin
  inherited;
  frmOperators.ShowModal;
  with frmOperators do begin
    if ModalResult <> mrOK then
      Exit;
    cbbOperator.KeyValue := fbntgrfldpfbdtst1OL_ID.Value;
  end;
end;

end.



