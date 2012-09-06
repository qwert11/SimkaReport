inherited frmUser: TfrmUser
  Caption = 'frmUser'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    object lbl1: TLabel [0]
      Left = 8
      Top = 0
      Width = 95
      Height = 13
      Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100' SIM'
    end
    object lbl2: TLabel [1]
      Left = 8
      Top = 48
      Width = 31
      Height = 13
      Caption = #1040#1076#1088#1077#1089
    end
    object edtUser: TEdit
      Left = 8
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 4
      Text = 'edtUser'
    end
    object edtUserLocation: TEdit
      Left = 8
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 5
      Text = 'edtUserLocation'
    end
  end
  inherited dbgrdh1: TDBGridEh
    Columns = <
      item
        EditButtons = <>
        Footers = <>
      end>
  end
  inherited pfbdtst1: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE "USER"'
      'SET '
      '    U_SER = :P_U_SER,'
      '    U_LOCATION = :P_U_LOCATION'
      'WHERE'
      '    U_ID = :P_U_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    "USER"'
      'WHERE'
      '        U_ID = :P_U_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO "USER"('
      '    U_SER,'
      '    U_LOCATION'
      ')'
      'VALUES('
      '    :P_U_SER,'
      '    :P_U_LOCATION'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    U_ID,'
      '    U_SER,'
      '    U_LOCATION'
      'FROM'
      '    "USER" '
      ''
      ' WHERE '
      '        "USER".U_ID = :P_U_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    U_ID,'
      '    U_SER,'
      '    U_LOCATION'
      'FROM'
      '    "USER" ')
    Active = True
    object fbntgrfldpfbdtst1U_ID: TFIBIntegerField
      FieldName = 'U_ID'
    end
    object fbstrngfldpfbdtst1U_SER: TFIBStringField
      FieldName = 'U_SER'
      Size = 50
      EmptyStrToNull = True
    end
    object fbstrngfldpfbdtst1U_LOCATION: TFIBStringField
      FieldName = 'U_LOCATION'
      Size = 50
      EmptyStrToNull = True
    end
  end
end
