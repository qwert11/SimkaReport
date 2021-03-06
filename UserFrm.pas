unit UserFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ChaildFrm, ActnList, DB, FIBDataSet, pFIBDataSet, Menus,
  ComCtrls, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, fib,
  DBGridEhGrouping, GridsEh, DBGridEh, AppEvnts;

type
  TfrmUser = class(TChaildForm)
    edtUser: TEdit;
    lbl1: TLabel;
    edtUserLocation: TEdit;
    lbl2: TLabel;
    fbntgrfldpfbdtst1U_ID: TFIBIntegerField;
    fbstrngfldpfbdtst1U_SER: TFIBStringField;
    fbstrngfldpfbdtst1U_LOCATION: TFIBStringField;
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

uses CustomerFunctions;

{$R *.dfm}

procedure TfrmUser.btnSaveClick(Sender: TObject);
begin
  with pfbdtst1 do
  try

    QueryPrepare;

    case FEditorState of
      esEdit: with QUpdate do begin
        ParamByName('P_U_ID').AsInteger := pfbdtst1.FieldByName('U_ID').AsInteger;
        ParamByName('P_U_SER').Value := edtUser.Text;
        ParamByName('P_U_LOCATION').Value := StrToVarNull(edtUserLocation);
      end;

      esInsert: with QInsert do begin
        ParamByName('P_U_SER').Value := edtUser.Text;
        ParamByName('P_U_LOCATION').Value := StrToVarNull(edtUserLocation);
      end;

      esDelete: with QDelete do begin
        ParamByName('P_P_ID').AsInteger := pfbdtst1.FieldByName('P_ID').AsInteger;
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

procedure TfrmUser.FormCreate(Sender: TObject);
begin
  inherited;
  FCheckComponents.Add(edtUser)
end;

end.
