inherited frmOperators: TfrmOperators
  Left = 837
  Top = 437
  Caption = 'frmOperators'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    object lbl1: TLabel [0]
      Left = 8
      Top = 24
      Width = 52
      Height = 13
      Caption = #1042#1080#1076' '#1089#1074#1103#1079#1080
    end
    object edtOperatorLink: TEdit
      Left = 8
      Top = 40
      Width = 193
      Height = 21
      TabOrder = 4
      Text = 'edtOperatorLink'
    end
  end
  inherited pfbdtst1: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE OPERATOR_LINK'
      'SET '
      '    OL_PERATOR_INK = :OL_PERATOR_INK'
      'WHERE'
      '    OL_ID = :P_OL_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    OPERATOR_LINK'
      'WHERE'
      '        OL_ID = :P_OL_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO OPERATOR_LINK('
      '    OL_PERATOR_INK'
      ')'
      'VALUES('
      '    :P_OL_PERATOR_INK'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    OL_ID,'
      '    OL_PERATOR_INK'
      'FROM'
      '    OPERATOR_LINK '
      ''
      'WHERE '
      '    OL_ID = :P_OL_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    OL_ID,'
      '    OL_PERATOR_INK'
      'FROM'
      '    OPERATOR_LINK ')
    Active = True
    object fbntgrfldpfbdtst1OL_ID: TFIBIntegerField
      FieldName = 'OL_ID'
    end
    object fpfbdtst1OL_PERATOR_INK: TFIBStringField
      FieldName = 'OL_PERATOR_INK'
      Size = 50
      EmptyStrToNull = True
    end
  end
end
