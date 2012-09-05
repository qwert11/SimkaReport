object frmEditingReport: TfrmEditingReport
  Left = 419
  Top = 179
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
      end
      item
        Name = 'cRS_RADRSNG_ALL'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'cRS_NUM_ALL'
        DataType = ftInteger
      end
      item
        Name = 'cRS_RADRSNG_BUSY'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'cRS_NUM_BUSY'
        DataType = ftInteger
      end
      item
        Name = 'cRS_RADRSNG_NOANSWR'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'cRS_NUM_NOANSWR'
        DataType = ftInteger
      end
      item
        Name = 'cRS_RADRSNG_OUTSD'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'cRS_NUM_OUTSD'
        DataType = ftInteger
      end>
    IndexDefs = <>
    FetchOnDemand = False
    Params = <>
    StoreDefs = True
    BeforePost = cdsTmpERBeforePost
    Left = 48
    Top = 232
    Data = {
      640400009619E0BD01000000180000002B000000000003000000640406635253
      5F49440400010000000000066352535F496E04000100000000000863435F5253
      5F496E0400010000000000076352535F534D5304000100000000000963435F52
      535F534D530400010000000000096352535F4F776E657204000100000000000B
      63435F52535F4F776E65720400010000000000096352535F53696D6B61040001
      00000000000B63435F52535F53696D6B6104000100000000000D6352535F5461
      726966506C616E04000100000000000F63435F52535F5461726966506C616E04
      000100000000000A6352535F5374617475730100490000000100055749445448
      0200020001000C63435F52535F53746174757301004900000001000557494454
      480200020001000B6352535F42616C616E636504000100000000000D63435F52
      535F42616C616E63650400010000000000086352535F55736572040001000000
      00000A63435F52535F5573657204000100000000000E6352535F557365724272
      756E636804000100000000001063435F52535F557365724272756E6368040001
      00000000000C6352535F5061727443616C6C04000100000000000E63435F5253
      5F5061727443616C6C04000100000000000D6352535F4966496E7374616C6C01
      004900000001000557494454480200020001000F63435F52535F4966496E6374
      616C6C01004900000001000557494454480200020001000B6352535F4943435F
      53494D01004900000001000557494454480200020019000D63435F52535F4943
      435F53494D0100490000000100055749445448020002001900086352535F5055
      4B3101004900000001000557494454480200020014000A63435F52535F50554B
      310100490000000100055749445448020002001400086352535F50554B320100
      4900000001000557494454480200020014000A63435F52535F50554B32010049
      00000001000557494454480200020014000D6352535F5265706F727444617904
      000600000000000F63435F52535F5265706F7274446179040006000000000007
      6352425F53756D080004000000010007535542545950450200490006004D6F6E
      6579000963435F52425F53554D08000400000001000753554254595045020049
      0006004D6F6E6579000E6352425F5072736E6C5F41636E740400010000000000
      0F63435F52425F5072736E6C41636E7404000100000000000F6352535F524144
      52534E475F414C4C01004900000001000557494454480200020001000B635253
      5F4E554D5F414C4C0400010000000000106352535F52414452534E475F425553
      5901004900000001000557494454480200020001000C6352535F4E554D5F4255
      53590400010000000000136352535F52414452534E475F4E4F414E5357520100
      4900000001000557494454480200020001000F6352535F4E554D5F4E4F414E53
      57520400010000000000116352535F52414452534E475F4F5554534401004900
      000001000557494454480200020001000D6352535F4E554D5F4F555453440400
      0100000000000000}
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
    object strngfldTmpERcRS_RADRSNG_ALL: TStringField
      FieldName = 'cRS_RADRSNG_ALL'
      Size = 1
    end
    object intgrfldTmpERcRS_NUM_ALL: TIntegerField
      FieldName = 'cRS_NUM_ALL'
    end
    object strngfldTmpERcRS_RADRSNG_BUSY: TStringField
      FieldName = 'cRS_RADRSNG_BUSY'
      Size = 1
    end
    object intgrfldTmpERcRS_NUM_BUSY: TIntegerField
      FieldName = 'cRS_NUM_BUSY'
    end
    object strngfldTmpERcRS_RADRSNG_NOANSWR: TStringField
      FieldName = 'cRS_RADRSNG_NOANSWR'
      Size = 1
    end
    object intgrfldTmpERcRS_NUM_NOANSWR: TIntegerField
      FieldName = 'cRS_NUM_NOANSWR'
    end
    object strngfldTmpERcRS_RADRSNG_OUTSD: TStringField
      FieldName = 'cRS_RADRSNG_OUTSD'
      Size = 1
    end
    object intgrfldTmpERcRS_NUM_OUTSD: TIntegerField
      FieldName = 'cRS_NUM_OUTSD'
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
    object actExtendedReport: TAction
      Caption = 'actExtendedReport'
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
