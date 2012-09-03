inherited frmUserBrunch: TfrmUserBrunch
  Caption = 'frmUserBrunch'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    object lbl1: TLabel [0]
      Left = 8
      Top = 24
      Width = 31
      Height = 13
      Caption = #1054#1090#1076#1077#1083
    end
    object edtUserBrunch: TEdit
      Left = 8
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 4
      Text = 'edtUserBrunch'
    end
  end
  inherited pfbdtst1: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE USER_BRUNCH'
      'SET '
      '    UB_SER_RUNCH = :P_UB_SER_RUNCH'
      'WHERE'
      '    UB_ID = :P_UB_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    USER_BRUNCH'
      'WHERE'
      '        UB_ID = :P_UB_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO USER_BRUNCH('
      '    UB_SER_RUNCH'
      ')'
      'VALUES('
      '    :P_UB_SER_RUNCH'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    UB_ID,'
      '    UB_SER_RUNCH'
      'FROM'
      '    USER_BRUNCH '
      ''
      ' WHERE '
      '        USER_BRUNCH.UB_ID = :P_UB_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    UB_ID,'
      '    UB_SER_RUNCH'
      'FROM'
      '    USER_BRUNCH ')
  end
end
