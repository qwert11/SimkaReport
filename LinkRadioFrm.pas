unit LinkRadioFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ChaildFrm, ActnList, DB, FIBDataSet, pFIBDataSet, Menus,
  ComCtrls, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids;

type
  TfrmLinkRadio = class(TChaildForm)
    edtLinkRadio: TEdit;
    lbl1: TLabel;
    procedure btnSaveClick(Sender: TObject); override;
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
        if edtLinkRadio.Text = NullAsStringValue then
          raise Exception.Create('Заполните поля');
        ParamByName('P_LR_ID').AsInteger := pfbdtst1.FieldByName('LR_ID').AsInteger;
        ParamByName('P_LR_INK_ADIO').Value := edtLinkRadio.Text;
      end;

      esInsert: with QInsert do begin
        if edtLinkRadio.Text = NullAsStringValue then
          raise Exception.Create('Заполните поля');
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

end.
