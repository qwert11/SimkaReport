inherited frmUsers: TfrmUsers
  Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    object lbl1: TLabel [0]
      Left = 8
      Top = 8
      Width = 49
      Height = 13
      Caption = #1060#1072#1084#1080#1083#1080#1103
    end
    object lbl2: TLabel [1]
      Left = 8
      Top = 48
      Width = 22
      Height = 13
      Caption = #1048#1084#1103
    end
    object lbl3: TLabel [2]
      Left = 136
      Top = 48
      Width = 47
      Height = 13
      Caption = #1054#1090#1095#1077#1089#1090#1074#1086
    end
    object edtSurname: TEdit
      Left = 8
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 4
      Text = 'edtSurname'
    end
    object edtName: TEdit
      Left = 8
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 5
      Text = 'edtName'
    end
    object edtPatronymic: TEdit
      Left = 136
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 6
      Text = 'edtPatronymic'
    end
  end
  inherited pfbdtst1: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE PEOPLE'
      'SET '
      '    P_SURNAME = :P_P_SURNAME,'
      '    P_NAME = :P_P_NAME,'
      '    P_PATRONYMIC = :P_P_PATRONYMIC'
      'WHERE'
      '    P_ID = :P_P_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    PEOPLE'
      'WHERE'
      '    P_ID = :P_P_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO PEOPLE('
      '    P_SURNAME,'
      '    P_NAME,'
      '    P_PATRONYMIC'
      ')'
      'VALUES('
      '    :P_P_SURNAME,'
      '    :P_P_NAME,'
      '    :P_P_PATRONYMIC'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    P_ID,'
      '    P_SURNAME,'
      '    P_NAME,'
      '    P_PATRONYMIC'
      'FROM'
      '    PEOPLE '
      ''
      'WHERE '
      '    P_ID = :P_P_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    P_ID,'
      '    P_SURNAME,'
      '    P_NAME,'
      '    P_PATRONYMIC'
      'FROM'
      '    PEOPLE ')
  end
end
