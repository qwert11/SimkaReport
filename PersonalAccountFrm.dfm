inherited frmPersonalAccount: TfrmPersonalAccount
  Caption = 'frmPersonalAccount'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    object lbl1: TLabel [0]
      Left = 16
      Top = 24
      Width = 95
      Height = 13
      Caption = #1048#1076' '#1083#1080#1094#1077#1074#1086#1075#1086' '#1089#1095#1077#1090#1072
    end
    object edtPersonalAccount: TEdit
      Left = 16
      Top = 40
      Width = 145
      Height = 21
      TabOrder = 4
      Text = 'edtPersonalAccount'
    end
  end
  inherited pfbdtst1: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE PRCNL_ACNT'
      'SET '
      '    PA_RSNL_CNT = :P_PA_RSNL_CNT'
      'WHERE'
      '    PA_ID = :P_PA_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    PRCNL_ACNT'
      'WHERE'
      '    PA_ID = :P_PA_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO PRCNL_ACNT('
      '    PA_RSNL_CNT'
      ')'
      'VALUES('
      '    :P_PA_RSNL_CNT'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    PA_ID,'
      '    PA_RSNL_CNT'
      'FROM'
      '    PRCNL_ACNT '
      ''
      'WHERE '
      '    PA_ID = :P_PA_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    PA_ID,'
      '    PA_RSNL_CNT'
      'FROM'
      '    PRCNL_ACNT ')
    Active = True
    object fbntgrfldpfbdtst1PA_ID: TFIBIntegerField
      FieldName = 'PA_ID'
    end
    object fbstrngfldpfbdtst1PA_RSNL_CNT: TFIBStringField
      FieldName = 'PA_RSNL_CNT'
      Size = 50
      EmptyStrToNull = True
    end
  end
end
