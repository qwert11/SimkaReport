object ChaildForm: TChaildForm
  Left = 478
  Top = 192
  Width = 480
  Height = 408
  Caption = 'ChaildForm'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dbgrd1: TDBGrid
    Left = 0
    Top = 0
    Width = 472
    Height = 245
    Align = alClient
    DataSource = ds1
    PopupMenu = pm1
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = dbgrd1DblClick
    OnKeyPress = dbgrd1KeyPress
  end
  object pnl1: TPanel
    Left = 0
    Top = 245
    Width = 472
    Height = 90
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    DesignSize = (
      472
      90)
    object btn2: TBitBtn
      Left = 376
      Top = 56
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      TabOrder = 0
      Kind = bkCancel
    end
    object btn1: TBitBtn
      Left = 288
      Top = 56
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      TabOrder = 1
      Kind = bkOK
    end
    object btnSave: TButton
      Left = 288
      Top = 8
      Width = 75
      Height = 25
      Action = actSave
      Anchors = [akTop, akRight]
      TabOrder = 2
    end
    object btnCancel: TButton
      Left = 376
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 3
      OnClick = btnCancelClick
    end
  end
  object stat1: TStatusBar
    Left = 0
    Top = 335
    Width = 472
    Height = 19
    Panels = <
      item
        Width = 100
      end
      item
        Width = 50
      end>
  end
  object mm1: TMainMenu
    Left = 240
    Top = 144
    object File1: TMenuItem
      Caption = 'File'
    end
    object Edit1: TMenuItem
      Action = actEdit
    end
    object Insert1: TMenuItem
      Action = actInsert
    end
    object Delete1: TMenuItem
      Action = actDelete
    end
    object mniClearAll: TMenuItem
      Action = actClearAll
    end
  end
  object pm1: TPopupMenu
    Left = 280
    Top = 144
    object Edit2: TMenuItem
      Action = actEdit
    end
    object Insert2: TMenuItem
      Action = actInsert
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Delete2: TMenuItem
      Action = actDelete
    end
  end
  object pfbdtst1: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    A_ID,'
      '    A_PEOPLE,'
      '    A_PASSWORD,'
      '    A_LOGIN'
      'FROM'
      '    AUTHORIZATION ')
    Transaction = DM.pfbtrnsctn1
    Database = DM.DB
    Left = 240
    Top = 96
  end
  object ds1: TDataSource
    DataSet = pfbdtst1
    Left = 280
    Top = 96
  end
  object actlst1: TActionList
    Left = 48
    Top = 64
    object actInsert: TAction
      Caption = #1053#1086#1074#1072#1103' '#1079#1072#1087#1080#1089#1100
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1091#1102' '#1079#1072#1087#1080#1089#1100
      OnExecute = Insert1Click
    end
    object actEdit: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1090#1077#1082#1091#1097#1077#1081' '#1079#1072#1087#1080#1089#1080
      OnExecute = Edit1Click
    end
    object actDelete: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Hint = #1059#1076#1072#1083#1077#1085#1080#1077' '#1090#1077#1082#1091#1097#1077#1081' '#1079#1072#1087#1080#1089#1080
      OnExecute = Delete1Click
    end
    object actSave: TAction
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      OnExecute = btnSaveClick
      OnUpdate = actSaveUpdate
    end
    object actClearAll: TAction
      Caption = 'Clear All'
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1090#1072#1073#1083#1080#1094#1091
      OnExecute = actClearAllExecute
      OnUpdate = actClearAllUpdate
    end
  end
end
