object frmMain: TfrmMain
  Left = 441
  Top = 343
  Width = 1280
  Height = 486
  Caption = 'SIM'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dbgrdh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 1272
    Height = 361
    Align = alClient
    DataGrouping.GroupLevels = <>
    DataSource = DM.ds1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    IndicatorOptions = [gioShowRowIndicatorEh]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = dbgrdh1DrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'RD_DATE'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'TP_NAME'
        Footers = <>
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'TP_ABON_BOARD'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'TP_SMS_MONTH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'RS_SMS'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'D_NUM'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'D_TITLE'
        Footers = <>
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'S_NUMBER'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'O_NAME'
        Footers = <>
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'RS_SIMKA'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'RS_OWNER'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'RS_IN'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'RSID'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'TP_CLIR'
        Footers = <>
        Width = 14
      end
      item
        EditButtons = <>
        FieldName = 'TP_CLIR_PRICE'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'LR_INK_ADIO'
        Footers = <>
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'RS_STATUS'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'PC_ART_ALL'
        Footers = <>
        Width = 94
      end
      item
        EditButtons = <>
        FieldName = 'OL_PERATOR_INK'
        Footers = <>
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'RB_SUM'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'UB_SER_RUNCH'
        Footers = <>
        Width = 94
      end
      item
        EditButtons = <>
        FieldName = 'U_SER'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'U_LOCATION'
        Footers = <>
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'RS_IFINSTALL'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'RS_ICC_SIM'
        Footers = <>
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'RS_PUK1'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'RS_PUK2'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'PA_RSNL_CNT'
        Footers = <>
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'P_SURNAME'
        Footers = <>
        Width = 97
      end
      item
        EditButtons = <>
        FieldName = 'P_NAME'
        Footers = <>
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'P_PATRONYMIC'
        Footers = <>
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'RS_RADRSNG_ALL'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'RS_NUM_ALL'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'RS_RADRSNG_BUSY'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'RS_NUM_BUSY'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'RS_RADRSNG_NOANSWR'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'RS_NUM_NOANSWR'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'RS_RADRSNG_OUTSD'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'RS_NUM_OUTSD'
        Footers = <>
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 361
    Width = 1272
    Height = 52
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      1272
      52)
    object btnNewRecord: TButton
      Left = 24
      Top = 16
      Width = 140
      Height = 25
      Action = actInsert
      TabOrder = 0
    end
    object btnEditRecord: TButton
      Left = 168
      Top = 16
      Width = 140
      Height = 25
      Action = actEdit
      TabOrder = 1
    end
    object btnDeleteRecord: TButton
      Left = 312
      Top = 16
      Width = 140
      Height = 25
      Action = actDelete
      TabOrder = 2
    end
    object btnFinance: TButton
      Left = 472
      Top = 16
      Width = 55
      Height = 25
      Caption = 'Finance'
      TabOrder = 3
      Visible = False
      OnClick = btnFinanceClick
    end
    object btnTarifPlan: TButton
      Left = 536
      Top = 16
      Width = 55
      Height = 25
      Caption = 'TarifPlan'
      TabOrder = 4
      Visible = False
      OnClick = btnTarifPlanClick
    end
    object btnSimka: TButton
      Left = 600
      Top = 16
      Width = 55
      Height = 25
      Caption = 'Simka'
      TabOrder = 5
      Visible = False
      OnClick = btnSimkaClick
    end
    object btnDevise: TButton
      Left = 664
      Top = 16
      Width = 55
      Height = 25
      Caption = 'Devise'
      TabOrder = 6
      Visible = False
      OnClick = btnDeviseClick
    end
    object btnOwner: TButton
      Left = 728
      Top = 16
      Width = 55
      Height = 25
      Caption = 'Owner'
      TabOrder = 7
      Visible = False
      OnClick = btnOwnerClick
    end
    object btnAutentification: TButton
      Left = 1555
      Top = 16
      Width = 55
      Height = 25
      Action = actAutentification
      Anchors = [akTop, akRight]
      TabOrder = 8
    end
  end
  object stat1: TStatusBar
    Left = 0
    Top = 413
    Width = 1272
    Height = 19
    Panels = <
      item
        Width = 150
      end
      item
        Width = 150
      end
      item
        Width = 50
      end>
  end
  object actlst1: TActionList
    Left = 48
    Top = 64
    object actInsert: TAction
      Caption = #1053#1086#1074#1072#1103' '#1079#1072#1087#1080#1089#1100
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1091#1102' '#1079#1072#1087#1080#1089#1100
      OnExecute = actInsertExecute
      OnUpdate = actInsertUpdate
    end
    object actEdit: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1090#1077#1082#1091#1097#1077#1081' '#1079#1072#1087#1080#1089#1080
      OnExecute = actEditExecute
      OnUpdate = actEditUpdate
    end
    object actDelete: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Hint = #1059#1076#1072#1083#1077#1085#1080#1077' '#1090#1077#1082#1091#1097#1077#1081' '#1079#1072#1087#1080#1089#1080
      OnExecute = actDeleteExecute
      OnUpdate = actEditUpdate
    end
    object actAutentification: TAction
      Caption = #1042#1086#1081#1090#1080
      Hint = #1042#1086#1081#1090#1080' '#1087#1086#1076' '#1089#1074#1086#1080#1084' '#1083#1086#1075#1080#1085#1086#1084' '#1080' '#1087#1072#1088#1086#1083#1077#1084
      OnExecute = actAutentificationExecute
    end
    object actExtendedReport: TAction
      Caption = #1042#1080#1076
      Hint = #1042#1080#1076' '#1086#1090#1095#1077#1090#1072
      OnExecute = actExtendedReportExecute
      OnUpdate = actExtendedReportUpdate
    end
  end
  object pm1: TPopupMenu
    Left = 48
    Top = 112
    object mniInsert: TMenuItem
      Action = actInsert
    end
    object mniEdit: TMenuItem
      Action = actEdit
    end
    object mniN1: TMenuItem
      Caption = '-'
    end
    object mniDelete: TMenuItem
      Action = actDelete
    end
  end
  object mm1: TMainMenu
    Left = 88
    Top = 112
    object mniFile1: TMenuItem
      Caption = 'File'
    end
    object mniRecord1: TMenuItem
      Caption = 'Record'
      object mniInsert1: TMenuItem
        Action = actInsert
      end
      object mniEdit1: TMenuItem
        Action = actEdit
      end
      object mniN2: TMenuItem
        Caption = '-'
      end
      object mniDelete1: TMenuItem
        Action = actDelete
      end
    end
    object mniExtendedReport: TMenuItem
      Action = actExtendedReport
    end
  end
  object trnUpdate: TpFIBTransaction
    DefaultDatabase = DM.DB
    TimeoutAction = TARollback
    Left = 40
    Top = 296
  end
  object pfbqryUpdate: TpFIBQuery
    Transaction = trnUpdate
    Database = DM.DB
    Left = 80
    Top = 296
  end
end
