inherited frmTarifPlan: TfrmTarifPlan
  Left = 491
  Top = 222
  Width = 725
  Height = 422
  Caption = 'frmTarifPlan'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    Top = 267
    Width = 717
    DesignSize = (
      717
      90)
    object lbl1: TLabel [0]
      Left = 16
      Top = 8
      Width = 80
      Height = 13
      Caption = #1058#1072#1088#1080#1092#1085#1099#1081' '#1087#1083#1072#1085
    end
    object lbl2: TLabel [1]
      Left = 152
      Top = 8
      Width = 98
      Height = 13
      Caption = #1040#1073#1086#1085#1077#1085#1090#1089#1082#1072#1103' '#1087#1083#1072#1090#1072
    end
    object lbl3: TLabel [2]
      Left = 288
      Top = 8
      Width = 110
      Height = 13
      Caption = #1050#1086#1083'-'#1074#1086' '#1057#1052#1057' '#1085#1072' '#1084#1077#1089#1103#1094
    end
    object lbl4: TLabel [3]
      Left = 352
      Top = 64
      Width = 20
      Height = 13
      Caption = #1075#1088#1085'.'
    end
    inherited btn2: TBitBtn
      Left = 621
    end
    inherited btn1: TBitBtn
      Left = 533
    end
    inherited btnSave: TButton
      Left = 533
    end
    inherited btnCancel: TButton
      Left = 621
    end
    object edtTarifPlan: TEdit
      Left = 16
      Top = 24
      Width = 121
      Height = 21
      MaxLength = 50
      TabOrder = 4
      Text = 'edtTarifPlan'
    end
    object edtAbonBoard: TEdit
      Left = 152
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 5
      Text = 'edtAbonBoard'
      OnKeyPress = edtAbonBoardKeyPress
    end
    object edtSmsMonth: TEdit
      Left = 288
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 6
      Text = 'edtSmsMonth'
      OnKeyPress = edtSmsMonthKeyPress
    end
    object chkCLIR: TCheckBox
      Left = 16
      Top = 64
      Width = 169
      Height = 17
      Caption = #1040#1085#1090#1080#1086#1087#1088#1077#1076#1077#1083#1080#1090#1077#1083#1100' '#1085#1086#1084#1077#1088#1072
      TabOrder = 7
    end
    object edCLIR_Price: TEdit
      Left = 224
      Top = 56
      Width = 121
      Height = 21
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 8
      Text = 'edCLIR_Price'
      OnKeyPress = edtAbonBoardKeyPress
    end
  end
  inherited stat1: TStatusBar
    Top = 357
    Width = 717
  end
  inherited dbgrd1: TDBGrid
    Width = 717
    Height = 267
  end
  inherited pfbdtst1: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE TARIF_PLAN'
      'SET '
      '    TP_NAME = :P_TP_NAME,'
      '    TP_ABON_BOARD = :P_TP_ABON_BOARD,'
      '    TP_SMS_MONTH = :P_TP_SMS_MONTH,'
      '    TP_CLIR = :P_TP_CLIR,'
      '    TP_CLIR_PRICE = :P_TP_CLIR_PRICE'
      'WHERE'
      '    TPID = :P_TPID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    TARIF_PLAN'
      'WHERE'
      '    TPID = :P_TPID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO TARIF_PLAN('
      '    TP_NAME,'
      '    TP_ABON_BOARD,'
      '    TP_SMS_MONTH,'
      '    TP_CLIR,'
      '    TP_CLIR_PRICE'
      ')'
      'VALUES('
      '    :P_TP_NAME,'
      '    :P_TP_ABON_BOARD,'
      '    :P_TP_SMS_MONTH,'
      '    :P_TP_CLIR,'
      '    :P_TP_CLIR_PRICE'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    TPID,'
      '    TP_NAME,'
      '    TP_ABON_BOARD,'
      '    TP_SMS_MONTH,'
      '    TP_CLIR,'
      '    TP_CLIR_PRICE'
      'FROM'
      '    TARIF_PLAN '
      ''
      'WHERE '
      '    TPID = :P_TPID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    TPID,'
      '    TP_NAME,'
      '    TP_ABON_BOARD,'
      '    TP_SMS_MONTH,'
      '    TP_CLIR,'
      '    TP_CLIR_PRICE'
      'FROM'
      '    TARIF_PLAN ')
    Active = True
    AutoCommit = True
    object pfbdtst1TPID: TFIBIntegerField
      FieldName = 'TPID'
      Origin = 'TARIF_PLAN.TPID'
    end
    object pfbdtst1TP_NAME: TFIBStringField
      DisplayWidth = 10
      FieldName = 'TP_NAME'
      Origin = 'TARIF_PLAN.TP_NAME'
      Size = 50
      EmptyStrToNull = True
    end
    object pfbdtst1TP_ABON_BOARD: TFIBBCDField
      FieldName = 'TP_ABON_BOARD'
      Origin = 'TARIF_PLAN.TP_ABON_BOARD'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
      Size = 2
      RoundByScale = True
    end
    object pfbdtst1TP_SMS_MONTH: TFIBIntegerField
      DefaultExpression = '0'
      FieldName = 'TP_SMS_MONTH'
      Origin = 'TARIF_PLAN.TP_SMS_MONTH'
    end
    object fbstrngfldpfbdtst1TP_CLIR: TFIBStringField
      FieldName = 'TP_CLIR'
      Origin = 'TARIF_PLAN.TP_CLIR'
      Size = 1
      EmptyStrToNull = True
    end
    object fbcdfldpfbdtst1TP_CLIR_PRICE: TFIBBCDField
      FieldName = 'TP_CLIR_PRICE'
      Origin = 'TARIF_PLAN.TP_CLIR_PRICE'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
      Size = 2
      RoundByScale = True
    end
  end
end
