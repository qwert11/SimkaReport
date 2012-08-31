unit TarifPlanFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ChaildFrm, ActnList, Menus, StdCtrls, Buttons, ExtCtrls, Grids,
  DBGrids, DB, FIBDataSet, pFIBDataSet, IBCustomDataSet, IBQuery, fib,
  ComCtrls;

type
  TfrmTarifPlan = class(TChaildForm)
    edtTarifPlan: TEdit;
    edtAbonBoard: TEdit;
    edtSmsMonth: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    pfbdtst1TPID: TFIBIntegerField;
    pfbdtst1TP_NAME: TFIBStringField;
    pfbdtst1TP_ABON_BOARD: TFIBBCDField;
    pfbdtst1TP_SMS_MONTH: TFIBIntegerField;
    chkCLIR: TCheckBox;
    edCLIR_Price: TEdit;
    lbl4: TLabel;
    fbstrngfldpfbdtst1TP_CLIR: TFIBStringField;
    fbcdfldpfbdtst1TP_CLIR_PRICE: TFIBBCDField;
    procedure btnSaveClick(Sender: TObject); override;
    procedure edtAbonBoardKeyPress(Sender: TObject; var Key: Char);
    procedure edtSmsMonthKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTarifPlan: TfrmTarifPlan;

implementation

uses DM_, CustomerFunctions;

{$R *.dfm}

procedure TfrmTarifPlan.btnSaveClick(Sender: TObject);
begin
  with pfbdtst1 do
  try

    QueryPrepare;

    case FEditorState of
      esEdit: with QUpdate do begin
        if edtTarifPlan.Text = NullAsStringValue then
          raise Exception.Create('��������� ����');
        ParamByName('P_TPID').AsInteger := pfbdtst1.FieldByName('TPID').AsInteger;
        ParamByName('P_TP_NAME').AsString := edtTarifPlan.Text;

        EditFieldFlt(ParamByName('P_TP_ABON_BOARD'), edtAbonBoard.Text);
        EditFieldInt(ParamByName('P_TP_SMS_MONTH'), edtSmsMonth.Text);
        ParamByName('P_TP_CLIR').AsString := BoolToChar(chkCLIR.Checked);
        EditFieldInt(ParamByName('P_TP_CLIR_PRICE'), edCLIR_Price.Text);

      end;
      esInsert: with QInsert do begin
        if (edtTarifPlan.Text = NullAsStringValue) then
          raise Exception.Create('��������� ����');

        ParamByName('P_TP_NAME').AsString := edtTarifPlan.Text;
        EditFieldFlt(ParamByName('P_TP_ABON_BOARD'), edtAbonBoard.Text);
        EditFieldInt(ParamByName('P_TP_SMS_MONTH'), edtSmsMonth.Text);
        ParamByName('P_TP_CLIR').AsString := BoolToChar(chkCLIR.Checked);
        EditFieldInt(ParamByName('P_TP_CLIR_PRICE'), edCLIR_Price.Text);        
      end;
      esDelete: with QDelete do begin
        ParamByName('P_TPID').AsInteger := pfbdtst1.FieldByName('TPID').AsInteger;
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

procedure TfrmTarifPlan.edtAbonBoardKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  MaskKeyEdit(Sender, Key, ['0'..'9',DecimalSeparator]);
end;

procedure TfrmTarifPlan.edtSmsMonthKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  MaskKeyEdit(Sender, Key, ['0'..'9']);
end;

procedure TfrmTarifPlan.FormCreate(Sender: TObject);
begin
  inherited;
  FCheckComponents.Add(edtTarifPlan);
end;

end.
