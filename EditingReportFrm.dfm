object frmEditingReport: TfrmEditingReport
  Left = 136
  Top = 184
  Width = 1144
  Height = 586
  Caption = 'frmEditingReport'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object stat1: TStatusBar
    Left = 0
    Top = 513
    Width = 1136
    Height = 19
    Panels = <
      item
        Width = 200
      end
      item
        Width = 200
      end
      item
        Width = 50
      end>
  end
  object dbgrdhRepSIM: TDBGridEh
    Left = 0
    Top = 0
    Width = 897
    Height = 513
    Align = alClient
    DataGrouping.GroupLevels = <>
    DataSource = ds1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    IndicatorOptions = [gioShowRowIndicatorEh]
    PopupMenu = pm1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = dbgrdhRepSIMDrawColumnCell
    OnKeyPress = dbgrdhRepSIMKeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'In'
        Footers = <>
        Width = 24
      end
      item
        EditButtons = <>
        FieldName = 'cRS_SMS'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Owner'
        Footers = <>
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'Simka'
        Footers = <>
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'TarifPlan'
        Footers = <>
        Width = 63
      end
      item
        EditButtons = <>
        FieldName = 'cRS_Status'
        Footers = <>
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'cRS_Balance'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'User'
        Footers = <>
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'UserBrunch'
        Footers = <>
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'PartCall'
        Footers = <>
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'cRS_IfInstall'
        Footers = <>
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'cRS_ICC_SIM'
        Footers = <>
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'cRS_PUK1'
        Footers = <>
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'cRS_PUK2'
        Footers = <>
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'cRS_ReportDay'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'cRB_Sum'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'PrsnlAcnt'
        Footers = <>
        Width = 62
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object pnl1: TPanel
    Left = 897
    Top = 0
    Width = 239
    Height = 513
    Align = alRight
    TabOrder = 2
    object lbl1: TLabel
      Left = 4
      Top = 32
      Width = 29
      Height = 13
      Caption = #1044#1072#1090#1072':'
    end
    object dtpDate: TDateTimePicker
      Left = 40
      Top = 24
      Width = 97
      Height = 21
      Date = 41137.684692013890000000
      Time = 41137.684692013890000000
      TabOrder = 0
    end
    object btnSave: TBitBtn
      Left = 48
      Top = 480
      Width = 89
      Height = 25
      Action = actSave
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 1
      Kind = bkOK
    end
    object btnClose: TBitBtn
      Left = 152
      Top = 480
      Width = 75
      Height = 25
      TabOrder = 2
      Kind = bkCancel
    end
    object dbctrlgrd1: TDBCtrlGrid
      Left = 8
      Top = 56
      Width = 234
      Height = 216
      DataSource = ds2
      PanelWidth = 217
      TabOrder = 3
      object lbl4: TLabel
        Left = 8
        Top = 16
        Width = 66
        Height = 13
        Caption = #1048#1076' '#1083#1080#1094'.'#1089#1095#1077#1090#1072
      end
      object lbl5: TLabel
        Left = 40
        Top = 48
        Width = 34
        Height = 13
        Caption = #1057#1091#1084#1084#1072
      end
      object edtSumMony: TDBNumberEditEh
        Left = 80
        Top = 40
        Width = 97
        Height = 21
        DataField = 'cSUM'
        DataSource = ds2
        EditButtons = <>
        TabOrder = 0
        Visible = True
      end
      object cbbIDAccount: TDBComboBoxEh
        Left = 80
        Top = 8
        Width = 121
        Height = 21
        DataField = 'PrsnlAcnt'
        DataSource = ds2
        EditButtons = <>
        TabOrder = 1
        Visible = True
      end
    end
  end
  object tmr1: TTimer
    OnTimer = tmr1Timer
    Left = 88
    Top = 64
  end
  object ds1: TDataSource
    DataSet = cdsTmpER
    Left = 48
    Top = 264
  end
  object cdsTmpER: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'cRS_ID'
        DataType = ftInteger
      end
      item
        Name = 'cRS_In'
        DataType = ftInteger
      end
      item
        Name = 'cC_RS_In'
        DataType = ftInteger
      end
      item
        Name = 'cRS_SMS'
        DataType = ftInteger
      end
      item
        Name = 'cC_RS_SMS'
        DataType = ftInteger
      end
      item
        Name = 'cRS_Owner'
        DataType = ftInteger
      end
      item
        Name = 'cC_RS_Owner'
        DataType = ftInteger
      end
      item
        Name = 'cRS_Simka'
        DataType = ftInteger
      end
      item
        Name = 'cC_RS_Simka'
        DataType = ftInteger
      end
      item
        Name = 'cRS_TarifPlan'
        DataType = ftInteger
      end
      item
        Name = 'cC_RS_TarifPlan'
        DataType = ftInteger
      end
      item
        Name = 'cRS_Status'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'cC_RS_Status'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'cRS_Balance'
        DataType = ftInteger
      end
      item
        Name = 'cC_RS_Balance'
        DataType = ftInteger
      end
      item
        Name = 'cRS_User'
        DataType = ftInteger
      end
      item
        Name = 'cC_RS_User'
        DataType = ftInteger
      end
      item
        Name = 'cRS_UserBrunch'
        DataType = ftInteger
      end
      item
        Name = 'cC_RS_UserBrunch'
        DataType = ftInteger
      end
      item
        Name = 'cRS_PartCall'
        DataType = ftInteger
      end
      item
        Name = 'cC_RS_PartCall'
        DataType = ftInteger
      end
      item
        Name = 'cRS_IfInstall'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'cC_RS_IfInctall'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'cRS_ICC_SIM'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'cC_RS_ICC_SIM'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'cRS_PUK1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cC_RS_PUK1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cRS_PUK2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cC_RS_PUK2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cRS_ReportDay'
        DataType = ftDate
      end
      item
        Name = 'cC_RS_ReportDay'
        DataType = ftDate
      end
      item
        Name = 'cRB_Sum'
        DataType = ftCurrency
      end
      item
        Name = 'cC_RB_SUM'
        DataType = ftCurrency
      end
      item
        Name = 'cRB_Prsnl_Acnt'
        DataType = ftInteger
      end
      item
        Name = 'cC_RB_PrsnlAcnt'
        DataType = ftInteger
      end>
    IndexDefs = <>
    FetchOnDemand = False
    Params = <>
    StoreDefs = True
    BeforePost = cdsTmpERBeforePost
    Left = 48
    Top = 232
    object intgrfldTmpERcRS_ID: TIntegerField
      FieldName = 'cRS_ID'
    end
    object intgrfldTmpERcRS_In: TIntegerField
      FieldName = 'cRS_In'
    end
    object intgrfldTmpERcC_RS_In: TIntegerField
      FieldName = 'cC_RS_In'
      ReadOnly = True
    end
    object intgrfldTmpERcRS_SMS: TIntegerField
      FieldName = 'cRS_SMS'
    end
    object intgrfldTmpERcC_RS_SMS: TIntegerField
      FieldName = 'cC_RS_SMS'
      ReadOnly = True
    end
    object intgrfldTmpERcRS_Owner: TIntegerField
      FieldName = 'cRS_Owner'
    end
    object intgrfldTmpERcC_RS_Owner: TIntegerField
      FieldName = 'cC_RS_Owner'
      ReadOnly = True
    end
    object intgrfldTmpERcRS_Simka: TIntegerField
      FieldName = 'cRS_Simka'
    end
    object intgrfldTmpERcC_RS_Simka: TIntegerField
      FieldName = 'cC_RS_Simka'
      ReadOnly = True
    end
    object intgrfldTmpERcRS_TarifPlan: TIntegerField
      FieldName = 'cRS_TarifPlan'
    end
    object intgrfldTmpERcC_RS_TarifPlan: TIntegerField
      FieldName = 'cC_RS_TarifPlan'
      ReadOnly = True
    end
    object strngfldTmpERcRS_Status: TStringField
      FieldName = 'cRS_Status'
      Size = 1
    end
    object strngfldTmpERcC_RS_Status: TStringField
      FieldName = 'cC_RS_Status'
      ReadOnly = True
      Size = 1
    end
    object intgrfldTmpERcRS_Balance: TIntegerField
      FieldName = 'cRS_Balance'
    end
    object intgrfldTmpERcC_RS_Balance: TIntegerField
      FieldName = 'cC_RS_Balance'
      ReadOnly = True
    end
    object intgrfldTmpERcRS_User: TIntegerField
      FieldName = 'cRS_User'
    end
    object intgrfldTmpERcC_RS_User: TIntegerField
      FieldName = 'cC_RS_User'
      ReadOnly = True
    end
    object intgrfldTmpERcRS_UserBrunch: TIntegerField
      FieldName = 'cRS_UserBrunch'
    end
    object intgrfldTmpERcC_RS_UserBrunch: TIntegerField
      FieldName = 'cC_RS_UserBrunch'
      ReadOnly = True
    end
    object intgrfldTmpERcRS_PartCall: TIntegerField
      FieldName = 'cRS_PartCall'
    end
    object intgrfldTmpERcC_RS_PartCall: TIntegerField
      FieldName = 'cC_RS_PartCall'
      ReadOnly = True
    end
    object strngfldTmpERcRS_IfInstall: TStringField
      FieldName = 'cRS_IfInstall'
      Size = 1
    end
    object strngfldTmpERcC_RS_IfInctall: TStringField
      FieldName = 'cC_RS_IfInctall'
      ReadOnly = True
      Size = 1
    end
    object strngfldTmpERcRS_ICC_SIM: TStringField
      FieldName = 'cRS_ICC_SIM'
      Size = 25
    end
    object strngfldTmpERcC_RS_ICC_SIM: TStringField
      FieldName = 'cC_RS_ICC_SIM'
      ReadOnly = True
      Size = 25
    end
    object strngfldTmpERcRS_PUK1: TStringField
      FieldName = 'cRS_PUK1'
    end
    object strngfldTmpERcC_RS_PUK1: TStringField
      FieldName = 'cC_RS_PUK1'
      ReadOnly = True
    end
    object strngfldTmpERcRS_PUK2: TStringField
      FieldName = 'cRS_PUK2'
    end
    object strngfldTmpERcC_RS_PUK2: TStringField
      FieldName = 'cC_RS_PUK2'
      ReadOnly = True
    end
    object dtfldTmpERcRS_ReportDay: TDateField
      FieldName = 'cRS_ReportDay'
    end
    object dtfldTmpERcC_RS_ReportDay: TDateField
      FieldName = 'cC_RS_ReportDay'
      ReadOnly = True
    end
    object crncyfldTmpERcRB_Sum: TCurrencyField
      FieldName = 'cRB_Sum'
      OnGetText = crncyfldTmpERcRB_SumGetText
    end
    object crncyfldTmpERcC_RB_SUM: TCurrencyField
      FieldName = 'cC_RB_SUM'
      ReadOnly = True
    end
    object intgrfldTmpERcRB_Prsnl_Acnt: TIntegerField
      FieldName = 'cRB_Prsnl_Acnt'
    end
    object intgrfldTmpERcC_RB_PrsnlAcnt: TIntegerField
      FieldName = 'cC_RB_PrsnlAcnt'
      ReadOnly = True
    end
    object strngfldTmpERIn: TStringField
      FieldKind = fkLookup
      FieldName = 'In'
      LookupDataSet = frmDevice.pfbdtst1
      LookupKeyFields = 'DID'
      LookupResultField = 'D_NUM'
      KeyFields = 'cRS_In'
      Size = 100
      Lookup = True
    end
    object strngfldTmpEROwner: TStringField
      FieldKind = fkLookup
      FieldName = 'Owner'
      LookupDataSet = frmOwner.pfbdtst1
      LookupKeyFields = 'OID'
      LookupResultField = 'O_NAME'
      KeyFields = 'cRS_Owner'
      Size = 50
      Lookup = True
    end
    object strngfldTmpERSimka: TStringField
      FieldKind = fkLookup
      FieldName = 'Simka'
      LookupDataSet = frmSimka.pfbdtst1
      LookupKeyFields = 'SID'
      LookupResultField = 'S_NUMBER'
      KeyFields = 'cRS_Simka'
      Size = 100
      Lookup = True
    end
    object strngfldTmpERTarifPlan: TStringField
      FieldKind = fkLookup
      FieldName = 'TarifPlan'
      LookupDataSet = frmTarifPlan.pfbdtst1
      LookupKeyFields = 'TPID'
      LookupResultField = 'TP_NAME'
      KeyFields = 'cRS_TarifPlan'
      Size = 100
      Lookup = True
    end
    object strngfldTmpERPrsnlAcnt: TStringField
      FieldKind = fkLookup
      FieldName = 'PrsnlAcnt'
      LookupDataSet = frmPersonalAccount.pfbdtst1
      LookupKeyFields = 'PA_ID'
      LookupResultField = 'PA_RSNL_CNT'
      KeyFields = 'cRB_Prsnl_Acnt'
      Size = 50
      Lookup = True
    end
    object strngfldTmpERUser: TStringField
      FieldKind = fkLookup
      FieldName = 'User'
      LookupDataSet = frmUser.pfbdtst1
      LookupKeyFields = 'U_ID'
      LookupResultField = 'U_SER'
      KeyFields = 'cRS_User'
      Size = 50
      Lookup = True
    end
    object strngfldTmpERUserBrunch: TStringField
      FieldKind = fkLookup
      FieldName = 'UserBrunch'
      LookupDataSet = frmUserBrunch.pfbdtst1
      LookupKeyFields = 'UB_ID'
      LookupResultField = 'UB_SER_RUNCH'
      KeyFields = 'cRS_UserBrunch'
      Size = 50
      Lookup = True
    end
    object strngfldTmpERPartCall: TStringField
      FieldKind = fkLookup
      FieldName = 'PartCall'
      LookupDataSet = frmPartCall.pfbdtst1
      LookupKeyFields = 'PC_ID'
      LookupResultField = 'PC_ART_ALL'
      KeyFields = 'cRS_PartCall'
      Size = 50
      Lookup = True
    end
  end
  object actlst1: TActionList
    Left = 48
    Top = 64
    object actInsert: TAction
      Caption = #1053#1086#1074#1072#1103' '#1079#1072#1087#1080#1089#1100
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1091#1102' '#1079#1072#1087#1080#1089#1100
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
    end
    object actSave: TAction
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      OnExecute = actSaveExecute
      OnUpdate = actSaveUpdate
    end
    object actApply: TAction
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      OnExecute = actApplyExecute
      OnUpdate = actApplyUpdate
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
    object mniApply: TMenuItem
      Action = actApply
    end
  end
  object pfbqryUpdate: TpFIBQuery
    Transaction = frmMain.trnUpdate
    Database = DM.DB
    Left = 104
    Top = 264
  end
  object cdsTmpErBc: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'cRB_ID'
        DataType = ftInteger
      end
      item
        Name = 'cSUM'
        DataType = ftCurrency
      end
      item
        Name = 'cPrsnlAcnt'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 184
    Top = 232
    object intgrfldTmpErBccRB_ID: TIntegerField
      FieldName = 'cRB_ID'
    end
    object crncyfldTmpErBccSUM: TCurrencyField
      FieldName = 'cSUM'
    end
    object intgrfldTmpErBccPrsnlAcnt: TIntegerField
      FieldName = 'cPrsnlAcnt'
    end
    object strngfldTmpErBcPrsnlAcnt: TStringField
      FieldKind = fkLookup
      FieldName = 'PrsnlAcnt'
      LookupDataSet = frmPersonalAccount.pfbdtst1
      LookupKeyFields = 'PA_ID'
      LookupResultField = 'PA_RSNL_CNT'
      KeyFields = 'cPrsnlAcnt'
      Size = 50
      Lookup = True
    end
  end
  object ds2: TDataSource
    DataSet = cdsTmpErBc
    Left = 184
    Top = 264
  end
end
