inherited frmLinkRadio: TfrmLinkRadio
  Left = 785
  Top = 273
  Caption = 'frmLinkRadio'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    object lbl1: TLabel [0]
      Left = 16
      Top = 8
      Width = 52
      Height = 13
      Caption = #1042#1080#1076' '#1089#1074#1103#1079#1080
    end
    object edtLinkRadio: TEdit
      Left = 16
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 4
      Text = 'edtLinkRadio'
    end
  end
  inherited pfbdtst1: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE LINK_RADIO'
      'SET '
      '    LR_INK_ADIO = :P_LR_INK_ADIO'
      'WHERE'
      '    LR_ID = :P_LR_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    LINK_RADIO'
      'WHERE'
      '    LR_ID = :P_LR_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO LINK_RADIO('
      '    LR_INK_ADIO'
      ')'
      'VALUES('
      '    :P_LR_INK_ADIO'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    LR_ID,'
      '    LR_INK_ADIO'
      'FROM'
      '    LINK_RADIO '
      ''
      'WHERE '
      '    LR_ID = :P_LR_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    LR_ID,'
      '    LR_INK_ADIO'
      'FROM'
      '    LINK_RADIO ')
  end
end
