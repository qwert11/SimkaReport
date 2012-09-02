inherited frmAuthorization: TfrmAuthorization
  Caption = 'frmAuthorization'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited dbgrd1: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'A_ID'
        Width = 34
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P_SURNAME'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P_NAME'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P_PATRONYMIC'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'A_LOGIN'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'A_PASSWORD'
        Width = 89
        Visible = True
      end>
  end
  inherited pnl1: TPanel
    object btnPeople: TSpeedButton [0]
      Left = 240
      Top = 24
      Width = 23
      Height = 22
      Glyph.Data = {
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
      OnClick = btnPeopleClick
    end
    object lbl1: TLabel [1]
      Left = 8
      Top = 8
      Width = 80
      Height = 13
      Caption = #1051#1080#1095#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
    end
    object lbl2: TLabel [2]
      Left = 8
      Top = 48
      Width = 31
      Height = 13
      Caption = #1051#1086#1075#1080#1085
    end
    object lbl3: TLabel [3]
      Left = 136
      Top = 48
      Width = 38
      Height = 13
      Caption = #1055#1072#1088#1086#1083#1100
    end
    object cbbPeople: TDBLookupComboboxEh
      Left = 8
      Top = 24
      Width = 225
      Height = 21
      EditButton.ShortCut = 0
      EditButtons = <>
      KeyField = 'P_ID'
      ListField = 'P_SURNAME; P_NAME'
      ListSource = frmUsers.ds1
      TabOrder = 4
      Visible = True
    end
    object edtPassoword: TEdit
      Left = 136
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 5
      Text = 'edtPassoword'
    end
    object edtLogin: TEdit
      Left = 8
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 6
      Text = 'edtLogin'
    end
  end
  inherited pfbdtst1: TpFIBDataSet
    SelectSQL.Strings = (
      'select '
      '    people.p_surname,'
      '    people.p_name,'
      '    people.p_patronymic,'
      '    authorization.a_password,'
      '    authorization.a_login,'
      '    authorization.a_id'
      'from authorization'
      '   inner join people on (authorization.a_people = people.p_id)')
    object fbntgrfldpfbdtst1A_ID: TFIBIntegerField
      FieldName = 'A_ID'
    end
    object fpfbdtst1P_SURNAME: TFIBStringField
      FieldName = 'P_SURNAME'
      Origin = 'PEOPLE.P_SURNAME'
      Size = 50
      EmptyStrToNull = True
    end
    object fpfbdtst1P_NAME: TFIBStringField
      FieldName = 'P_NAME'
      Origin = 'PEOPLE.P_NAME'
      Size = 50
      EmptyStrToNull = True
    end
    object fpfbdtst1P_PATRONYMIC: TFIBStringField
      FieldName = 'P_PATRONYMIC'
      Origin = 'PEOPLE.P_PATRONYMIC'
      Size = 50
      EmptyStrToNull = True
    end
    object fpfbdtst1A_LOGIN: TFIBStringField
      FieldName = 'A_LOGIN'
      Origin = 'AUTHORIZATION.A_LOGIN'
      Size = 50
      EmptyStrToNull = True
    end
    object fpfbdtst1A_PASSWORD: TFIBStringField
      FieldName = 'A_PASSWORD'
      Origin = 'AUTHORIZATION.A_PASSWORD'
      Size = 50
      EmptyStrToNull = True
    end
  end
end
