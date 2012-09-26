object frmMain: TfrmMain
  Left = 220
  Top = 352
  Width = 1372
  Height = 539
  Caption = 'SIM'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  ShowHint = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dbgrdh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 1364
    Height = 422
    Align = alClient
    AutoFitColWidths = True
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
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    PopupMenu = pm1
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
        FieldName = 'PA_RSNL_CNT'
        Footers = <>
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'S_NUMBER'
        Footers = <>
        Width = 98
      end
      item
        EditButtons = <>
        FieldName = 'TP_NAME'
        Footers = <>
        Width = 85
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
        FieldName = 'UB_SER_RUNCH'
        Footers = <>
        Width = 61
      end
      item
        DisplayFormat = '# ##0.00'#1075#1088
        EditButtons = <>
        FieldName = 'RB_SUM'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'OLD_SUM'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'P_SURNAME'
        Footers = <>
        Width = 97
      end
      item
        EditButtons = <>
        FieldName = 'RS_STATUS'
        Footers = <>
        Title.Hint = #1057#1090#1072#1090#1091#1089' SIM: '#1072#1082#1090#1080#1074#1085#1072'; '#1085#1077' '#1072#1082#1090#1080#1074#1085#1072
        Width = 20
      end
      item
        EditButtons = <>
        FieldName = 'O_NAME'
        Footers = <>
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'PC_ART_ALL'
        Footers = <>
        Width = 94
      end
      item
        EditButtons = <>
        FieldName = 'RS_IFINSTALL'
        Footers = <>
        Title.Hint = 'SIM '#1082#1072#1088#1090#1072' '#1085#1072#1093#1086#1076#1080#1090#1089#1103' '#1074' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1077
        Width = 20
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
        FieldName = 'U_SER'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'RS_RADRSNG_ALL'
        Footers = <>
        Title.Hint = #1055#1077#1088#1077#1072#1076#1088#1077#1089#1072#1094#1080#1103' '#1076#1083#1103' '#1074#1089#1077#1093
        Width = 20
      end
      item
        EditButtons = <>
        FieldName = 'S_NUMBER1'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'RS_RADRSNG_BUSY'
        Footers = <>
        Title.Hint = #1087#1077#1088#1077#1072#1076#1088#1077#1089#1072#1094#1080#1103', '#1077#1089#1083#1080' '#1079#1072#1085#1103#1090
        Width = 20
      end
      item
        EditButtons = <>
        FieldName = 'S_NUMBER2'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'RS_RADRSNG_NOANSWR'
        Footers = <>
        Title.Hint = #1087#1077#1088#1077#1072#1076#1088#1077#1089#1072#1094#1080#1103', '#1077#1089#1083#1080' '#1085#1077' '#1086#1090#1074#1077#1095#1072#1077#1090
        Width = 20
      end
      item
        EditButtons = <>
        FieldName = 'S_NUMBER3'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'RS_RADRSNG_OUTSD'
        Footers = <>
        Title.Hint = #1087#1077#1088#1077#1072#1076#1088#1077#1089#1072#1094#1080#1103', '#1077#1089#1083#1080' '#1074#1085#1077' '#1079#1086#1085#1099' '#1076#1086#1089#1103#1075#1072#1077#1084#1086#1089#1090#1080
        Width = 20
      end
      item
        EditButtons = <>
        FieldName = 'S_NUMBER4'
        Footers = <>
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 422
    Width = 1364
    Height = 52
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      1364
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
    object btnPeople: TButton
      Left = 472
      Top = 16
      Width = 55
      Height = 25
      Caption = 'People'
      TabOrder = 3
      Visible = False
      OnClick = btnPeopleClick
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
      Left = 1647
      Top = 16
      Width = 55
      Height = 25
      Action = actAutentification
      Anchors = [akTop, akRight]
      TabOrder = 8
    end
    object btnEnter: TButton
      Left = 1252
      Top = 16
      Width = 75
      Height = 25
      Action = actAutentification
      Anchors = [akTop, akRight]
      TabOrder = 9
    end
    object btnAuthor: TButton
      Left = 792
      Top = 16
      Width = 55
      Height = 25
      Caption = 'Author'
      TabOrder = 10
      Visible = False
      OnClick = btnAuthorClick
    end
    object btnPartCall: TButton
      Left = 856
      Top = 16
      Width = 55
      Height = 25
      Caption = 'PartCall'
      TabOrder = 11
      Visible = False
      OnClick = btnPartCallClick
    end
    object btnLinkRadio: TButton
      Left = 920
      Top = 16
      Width = 55
      Height = 25
      Caption = 'LinkRadio'
      TabOrder = 12
      Visible = False
      OnClick = btnLinkRadioClick
    end
    object btnPrsnlAcnt: TButton
      Left = 984
      Top = 16
      Width = 55
      Height = 25
      Caption = 'PrsnlAcnt'
      TabOrder = 13
      Visible = False
      OnClick = btnPrsnlAcntClick
    end
    object btnUser: TButton
      Left = 1048
      Top = 16
      Width = 55
      Height = 25
      Caption = 'User'
      TabOrder = 14
      Visible = False
      OnClick = btnUserClick
    end
    object btnUserBrunch: TButton
      Left = 1112
      Top = 16
      Width = 55
      Height = 25
      Caption = 'UserBrunch'
      TabOrder = 15
      Visible = False
      OnClick = btnUserBrunchClick
    end
  end
  object stat1: TStatusBar
    Left = 0
    Top = 474
    Width = 1364
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
      Caption = #1058#1080#1087' '#1086#1090#1095#1077#1090#1072
      Hint = #1042#1080#1076' '#1086#1090#1095#1077#1090#1072
      OnExecute = actExtendedReportExecute
      OnUpdate = actExtendedReportUpdate
    end
    object actExport: TAction
      Caption = #1069#1082#1089#1087#1086#1088#1090
      OnExecute = actExportExecute
      OnUpdate = actEditUpdate
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
    object mniN3: TMenuItem
      Caption = '-'
    end
    object mniExport1: TMenuItem
      Action = actExport
    end
  end
  object mm1: TMainMenu
    Left = 88
    Top = 112
    object mniFile1: TMenuItem
      Caption = 'File'
      object mniExport: TMenuItem
        Action = actExport
      end
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
    object mniAutentification: TMenuItem
      Action = actAutentification
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
  object dlgSave1: TSaveDialog
    Filter = 
      'Excel files (*.xls)|*.xls|Text files (*.txt)|*.txt|Csv files (*.' +
      'csv)|*.csv|Htm files (*.htm)|*.htm|RTF files (*.rtf)|*.rtf'
    Left = 48
    Top = 160
  end
end
