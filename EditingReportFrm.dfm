object frmEditingReport: TfrmEditingReport
  Left = 193
  Top = 206
  Width = 1061
  Height = 481
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
    Top = 408
    Width = 1053
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
    Width = 814
    Height = 408
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
        FieldName = 'cRS_ID'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'cRS_In'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'cRS_SMS'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'cRS_Owner'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'cRS_Simka'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'cRS_TarifPlan'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'cRS_Status'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'cRS_Balance'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'cRS_User'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'cRS_UserBrunch'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'cRS_PartCall'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'cRS_IfInstall'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'cRS_ICC_SIM'
        Footers = <>
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'cRS_PUK1'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'cRS_PUK2'
        Footers = <>
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'cRS_ReportDay'
        Footers = <>
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object pnl1: TPanel
    Left = 814
    Top = 0
    Width = 239
    Height = 408
    Align = alRight
    TabOrder = 2
    object lbl2: TLabel
      Left = 9
      Top = 56
      Width = 112
      Height = 13
      Caption = 'ID '#1083#1080#1094#1077#1074#1086#1075#1086' '#1089#1095#1077#1090#1072' '#8470'1'
    end
    object lbl1: TLabel
      Left = 4
      Top = 32
      Width = 29
      Height = 13
      Caption = #1044#1072#1090#1072':'
    end
    object lbl3: TLabel
      Left = 137
      Top = 56
      Width = 112
      Height = 13
      Caption = 'ID '#1083#1080#1094#1077#1074#1086#1075#1086' '#1089#1095#1077#1090#1072' '#8470'2'
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
    object cbbIDAccount2: TDBLookupComboboxEh
      Left = 128
      Top = 80
      Width = 121
      Height = 21
      DataSource = ds2
      EditButtons = <>
      KeyField = 'FID'
      ListField = 'F_CODE; F_IDACCOUNT'
      TabOrder = 1
      Visible = True
    end
    object cbbIDAccount1: TDBLookupComboboxEh
      Left = 0
      Top = 72
      Width = 121
      Height = 21
      EditButtons = <>
      KeyField = 'FID'
      ListField = 'F_CODE; F_IDACCOUNT'
      TabOrder = 2
      Visible = True
    end
    object edtSum1: TEdit
      Left = 0
      Top = 104
      Width = 121
      Height = 21
      TabOrder = 3
      Text = 'edtSum1'
      OnKeyPress = edtSum1KeyPress
    end
    object edtSum2: TEdit
      Left = 128
      Top = 104
      Width = 121
      Height = 21
      TabOrder = 4
      Text = 'edtSum2'
      OnKeyPress = edtSum1KeyPress
    end
    object btnSave: TBitBtn
      Left = 16
      Top = 376
      Width = 89
      Height = 25
      Action = actSave
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 5
      Kind = bkOK
    end
    object btnClose: TBitBtn
      Left = 120
      Top = 376
      Width = 75
      Height = 25
      TabOrder = 6
      Kind = bkCancel
    end
    object dbctrlgrd1: TDBCtrlGrid
      Left = 8
      Top = 136
      Width = 233
      Height = 216
      DataSource = ds2
      PanelWidth = 216
      TabOrder = 7
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
      object cbbIDAccount: TDBLookupComboboxEh
        Left = 80
        Top = 8
        Width = 121
        Height = 21
        DataField = 'cPrsnlAcnt'
        DataSource = ds2
        EditButtons = <>
        TabOrder = 0
        Visible = True
      end
      object edtSumMony: TDBNumberEditEh
        Left = 80
        Top = 40
        Width = 97
        Height = 21
        DataField = 'cSUM'
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
    Active = True
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
        Name = 'cRS_SMS'
        DataType = ftInteger
      end
      item
        Name = 'cRS_Owner'
        DataType = ftInteger
      end
      item
        Name = 'cRS_Simka'
        DataType = ftInteger
      end
      item
        Name = 'cRS_TarifPlan'
        DataType = ftInteger
      end
      item
        Name = 'cRS_Status'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'cRS_Balance'
        DataType = ftInteger
      end
      item
        Name = 'cRS_User'
        DataType = ftInteger
      end
      item
        Name = 'cRS_UserBrunch'
        DataType = ftInteger
      end
      item
        Name = 'cRS_PartCall'
        DataType = ftInteger
      end
      item
        Name = 'cRS_IfInstall'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'cRS_ICC_SIM'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'cRS_PUK1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cRS_PUK2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cRS_ReportDay'
        DataType = ftDate
      end>
    IndexDefs = <>
    FetchOnDemand = False
    Params = <>
    StoreDefs = True
    BeforePost = cdsTmpERBeforePost
    Left = 48
    Top = 232
    Data = {
      840100009619E0BD010000001800000010000000000003000000840106635253
      5F49440400010000000000066352535F496E0400010000000000076352535F53
      4D530400010000000000096352535F4F776E6572040001000000000009635253
      5F53696D6B6104000100000000000D6352535F5461726966506C616E04000100
      000000000A6352535F5374617475730100490000000100055749445448020002
      0001000B6352535F42616C616E63650400010000000000086352535F55736572
      04000100000000000E6352535F557365724272756E636804000100000000000C
      6352535F5061727443616C6C04000100000000000D6352535F4966496E737461
      6C6C01004900000001000557494454480200020001000B6352535F4943435F53
      494D0100490000000100055749445448020002001900086352535F50554B3101
      00490000000100055749445448020002001400086352535F50554B3201004900
      000001000557494454480200020014000D6352535F5265706F72744461790400
      0600000000000000}
    object intgrfldTmpERcRS_ID: TIntegerField
      FieldName = 'cRS_ID'
    end
    object intgrfldTmpERcRS_In: TIntegerField
      FieldName = 'cRS_In'
    end
    object intgrfldTmpERcRS_SMS: TIntegerField
      FieldName = 'cRS_SMS'
    end
    object intgrfldTmpERcRS_Owner: TIntegerField
      FieldName = 'cRS_Owner'
    end
    object intgrfldTmpERcRS_Simka: TIntegerField
      FieldName = 'cRS_Simka'
    end
    object intgrfldTmpERcRS_TarifPlan: TIntegerField
      FieldName = 'cRS_TarifPlan'
    end
    object strngfldTmpERcRS_Status: TStringField
      FieldName = 'cRS_Status'
      Size = 1
    end
    object intgrfldTmpERcRS_Balance: TIntegerField
      FieldName = 'cRS_Balance'
    end
    object intgrfldTmpERcRS_User: TIntegerField
      FieldName = 'cRS_User'
    end
    object intgrfldTmpERcRS_UserBrunch: TIntegerField
      FieldName = 'cRS_UserBrunch'
    end
    object intgrfldTmpERcRS_PartCall: TIntegerField
      FieldName = 'cRS_PartCall'
    end
    object strngfldTmpERcRS_IfInstall: TStringField
      FieldName = 'cRS_IfInstall'
      Size = 1
    end
    object strngfldTmpERcRS_ICC_SIM: TStringField
      FieldName = 'cRS_ICC_SIM'
      Size = 25
    end
    object strngfldTmpERcRS_PUK1: TStringField
      FieldName = 'cRS_PUK1'
    end
    object strngfldTmpERcRS_PUK2: TStringField
      FieldName = 'cRS_PUK2'
    end
    object dtfldTmpERcRS_ReportDay: TDateField
      FieldName = 'cRS_ReportDay'
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
  object pfbtrnsctUpdate: TpFIBTransaction
    DefaultDatabase = DM.DB
    TimeoutAction = TARollback
    Left = 104
    Top = 232
  end
  object pfbqryUpdate: TpFIBQuery
    Transaction = pfbtrnsctUpdate
    Database = DM.DB
    Left = 104
    Top = 264
  end
  object cdsTmpErBc: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
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
    Data = {
      4E0000009619E0BD0100000018000000020000000000030000004E0004635355
      4D080004000000010007535542545950450200490006004D6F6E6579000A6350
      72736E6C41636E7404000100000000000000}
    object crncyfldTmpErBccSUM: TCurrencyField
      FieldName = 'cSUM'
    end
    object intgrfldTmpErBccPrsnlAcnt: TIntegerField
      FieldName = 'cPrsnlAcnt'
    end
  end
  object ds2: TDataSource
    DataSet = cdsTmpErBc
    Left = 184
    Top = 264
  end
end
