inherited frmPartCall: TfrmPartCall
  Caption = 'frmPartCall'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    object lbl1: TLabel [0]
      Left = 16
      Top = 8
      Width = 64
      Height = 13
      Caption = #1056#1086#1083#1100' '#1079#1074#1086#1085#1082#1072
    end
    object edtPartCall: TEdit
      Left = 16
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 4
      Text = 'edtPartCall'
    end
  end
  inherited pfbdtst1: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE PART_CALL'
      'SET '
      '    PC_ART_ALL = :P_PC_ART_ALL'
      'WHERE'
      '    PC_ID = :P_PC_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    PART_CALL'
      'WHERE'
      '    PC_ID = :P_PC_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO PART_CALL('
      '    PC_ART_ALL'
      ')'
      'VALUES('
      '    :P_PC_ART_ALL'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    PC_ID,'
      '    PC_ART_ALL'
      'FROM'
      '    PART_CALL '
      ''
      'WHERE '
      '    PC_ID = :P_PC_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    PC_ID,'
      '    PC_ART_ALL'
      'FROM'
      '    PART_CALL ')
    Active = True
    object fbntgrfldpfbdtst1PC_ID: TFIBIntegerField
      FieldName = 'PC_ID'
    end
    object fbstrngfldpfbdtst1PC_ART_ALL: TFIBStringField
      FieldName = 'PC_ART_ALL'
      Size = 50
      EmptyStrToNull = True
    end
  end
end
