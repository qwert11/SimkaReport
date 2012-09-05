object frmEditingReport: TfrmEditingReport
  Left = 364
  Top = 277
  Width = 1147
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
    Top = 521
    Width = 1139
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
    Width = 896
    Height = 521
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
    Left = 896
    Top = 0
    Width = 243
    Height = 521
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
      Left = 0
      Top = 56
      Width = 233
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
        Left = 16
        Top = 48
        Width = 34
        Height = 13
        Caption = #1057#1091#1084#1084#1072
      end
      object cbbIDAccount: TDBComboBoxEh
        Left = 80
        Top = 8
        Width = 121
        Height = 21
        DataField = 'PrsnlAcnt'
        DataSource = ds2
        EditButton.Action = actPrsnlAcnt
        EditButton.Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FF00FFFF00FF
          FF00FF3F96BD0076A9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7EBAD30078AB0078ABFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FF007BAE00B7EB007BAEFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7EBDD600A5D900B8EC00
          7EB1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF0081B400BAEE00B8EC0081B4FF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7EC0D907AADC06
          B9EB0ABCED0085B8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3FA5CB
          0089BC0089BC0089BC0089BC099CCE05AFE20BB7E818C0EE0089BCFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF7EC4DD1CB3E01BC0EE1BC0EE1BC0EE14BBEA0B
          B2E300A9DD0EB5E52AC5EF008DC0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          0092C532CBF232CAF238CFF446D7FA4FDDFE4FDDFE48D8FB45D7FA3DCCF10092
          C5FF00FFFF00FFFF00FFFF00FFFF00FF7EC8E237BDE56EE5FF6EE5FF6EE5FFA5
          F2FFDDFFFFDDFFFFDDFFFFDDFFFFA5E5F20096CAFF00FFFF00FFFF00FFFF00FF
          FF00FF009ACE89ECFF89ECFF89ECFF89ECFF66D8F322AEDA009ACE009ACE009A
          CE009ACE3FB1D8FF00FFFF00FFFF00FFFF00FF7ECCE651C9E9A3F2FFA3F2FFA3
          F2FFA3F2FF7ADDF4009ED2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FF00A1D5BAF7FFBAF7FFBAF7FFBAF7FFBAF7FF8BE2F400A1D5FF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7ECFE967D1ECCFFCFFCF
          FCFFCFFCFFCFFCFFCFFCFF9AE6F500A4D8FF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF00A7DBDDFFFFDDFFFFDDFFFFDDFFFFDDFFFFDDFFFFA5E9
          F600A7DBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7ED2EC16B2E036
          BEE657CCEB6ED5EE6ED5EE57CCEB36BEE616B2E03FBDE4FF00FF}
        EditButtons = <>
        TabOrder = 0
        Visible = True
      end
      object edtSUM: TDBEditEh
        Left = 80
        Top = 40
        Width = 121
        Height = 21
        DataField = 'cSUM'
        DataSource = ds2
        EditButtons = <>
        TabOrder = 1
        Visible = True
      end
    end
    object dbnvgrBalance: TDBNavigator
      Left = 0
      Top = 272
      Width = 240
      Height = 25
      DataSource = ds2
      TabOrder = 4
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
      OnExecute = actInsertExecute
      OnUpdate = actInsertUpdate
    end
    object actEditField: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1090#1077#1082#1091#1097#1077#1081' '#1079#1072#1087#1080#1089#1080
      OnExecute = actEditFieldExecute
      OnUpdate = actEditFieldUpdate
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
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
      OnExecute = actApplyExecute
      OnUpdate = actApplyUpdate
    end
    object actPrsnlAcnt: TAction
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1048#1044' '#1083#1080#1094#1077#1074#1086#1075#1086' '#1089#1095#1077#1090#1072
      OnExecute = actPrsnlAcntExecute
    end
  end
  object pm1: TPopupMenu
    Left = 48
    Top = 112
    object mniInsert: TMenuItem
      Action = actInsert
    end
    object mniEdit: TMenuItem
      Action = actEditField
    end
    object mniN1: TMenuItem
      Caption = '-'
    end
    object mniSave: TMenuItem
      Action = actApply
    end
    object mniN3: TMenuItem
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
        Action = actEditField
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
    IndexDefs = <
      item
        Name = 'cdsTmpErBcIndex1'
        Fields = 'cPrsnlAcnt'
        Options = [ixUnique]
      end>
    Params = <>
    StoreDefs = True
    BeforePost = cdsTmpErBcBeforePost
    AfterPost = cdsTmpErBcAfterPost
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
