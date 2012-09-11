object DM: TDM
  OldCreateOrder = False
  Left = 1426
  Top = 715
  Height = 259
  Width = 174
  object DB: TpFIBDatabase
    Connected = True
    DBName = 'SimkaReport.FDB'
    DBParams.Strings = (
      'password=masterkey'
      'user_name=SYSDBA'
      'lc_ctype=WIN1251')
    SQLDialect = 3
    Timeout = 0
    WaitForRestoreConnect = 0
    Left = 56
    Top = 16
  end
  object pfbtrnsctn1: TpFIBTransaction
    Active = True
    DefaultDatabase = DB
    TimeoutAction = TARollback
    TRParams.Strings = (
      'write'
      'nowait'
      'rec_version'
      'read_committed')
    TPBMode = tpbDefault
    Left = 56
    Top = 64
  end
  object pfbtrnsView: TpFIBTransaction
    Active = True
    DefaultDatabase = DB
    TimeoutAction = TARollback
    TRParams.Strings = (
      'read'
      'isc_tpb_nowait'
      'read_committed'
      'rec_version')
    TPBMode = tpbDefault
    Left = 56
    Top = 112
  end
  object ds1: TDataSource
    DataSet = pfbdtstView
    Left = 104
    Top = 160
  end
  object pfbdtstView: TpFIBDataSet
    SelectSQL.Strings = (
      'select '
      '    report_day.rd_date,'
      '    tarif_plan.tp_name,'
      '    tarif_plan.tp_abon_board,'
      '    tarif_plan.tp_sms_month,'
      '    report_simka.rs_sms,'
      '    device.d_num,'
      '    device.d_title,'
      '    owner.o_name,'
      '    simka.s_number,'
      '    report_simka.rs_simka,'
      '    report_simka.rs_owner,'
      '    report_simka.rs_in,'
      '    report_simka.rsid,'
      '    tarif_plan.tp_clir,'
      '    tarif_plan.tp_clir_price,'
      '    link_radio.lr_ink_adio,'
      '    report_simka.rs_status,'
      '    part_call.pc_art_all,'
      '    operator_link.ol_perator_ink,'
      '    report_balance.rb_sum,'
      '    "USER".u_ser,'
      '    "USER".u_location,'
      '    user_brunch.ub_ser_runch,'
      '    report_simka.rs_ifinstall,'
      '    report_simka.rs_icc_sim,'
      '    report_simka.rs_puk1,'
      '    report_simka.rs_puk2,'
      '    prcnl_acnt.pa_rsnl_cnt,'
      '    people.p_surname,'
      '    people.p_name,'
      '    people.p_patronymic,'
      '    report_simka.rs_tarifplan,'
      '    report_simka.rs_part_call,'
      '    report_simka.rs_reportday,'
      '    report_simka.rs_balance,'
      '    report_simka.rs_user,'
      '    report_simka.rs_user_brunch,'
      '    report_balance.rb_prsnl_acnt,'
      '    report_day.rd_respons,'
      '    report_simka.rs_radrsng_all,'
      '    report_simka.rs_radrsng_busy,'
      '    report_simka.rs_radrsng_noanswr,'
      '    report_simka.rs_radrsng_outsd,'
      '    simka4.s_number,'
      '    simka2.s_number,'
      '    simka3.s_number,'
      '    simka1.s_number,'
      '    report_simka.rs_num_all,'
      '    report_simka.rs_num_busy,'
      '    report_simka.rs_num_noanswr,'
      '    report_simka.rs_num_outsd'
      'from report_simka'
      '   left outer join owner on (report_simka.rs_owner = owner.oid)'
      
        '   left outer join simka simka4 on (report_simka.rs_num_outsd = ' +
        'simka4.sid)'
      
        '   left outer join simka simka3 on (report_simka.rs_num_noanswr ' +
        '= simka3.sid)'
      
        '   left outer join user_brunch on (report_simka.rs_user_brunch =' +
        ' user_brunch.ub_id)'
      
        '   left outer join report_day on (report_simka.rs_reportday = re' +
        'port_day.rd_date)'
      
        '   left outer join people on (report_day.rd_respons = people.p_i' +
        'd)'
      '   left outer join simka on (report_simka.rs_simka = simka.sid)'
      
        '   left outer join link_radio on (simka.s_link_radio = link_radi' +
        'o.lr_id)'
      
        '   left outer join operator_link on (simka.s_operator = operator' +
        '_link.ol_id)'
      
        '   left outer join tarif_plan on (report_simka.rs_tarifplan = ta' +
        'rif_plan.tpid)'
      
        '   left outer join part_call on (report_simka.rs_part_call = par' +
        't_call.pc_id)'
      
        '   left outer join report_balance on (report_simka.rs_balance = ' +
        'report_balance.rb_id)'
      
        '   left outer join prcnl_acnt on (report_balance.rb_prsnl_acnt =' +
        ' prcnl_acnt.pa_id)'
      
        '   left outer join "USER" on (report_simka.rs_user = "USER".u_id' +
        ')'
      '   left outer join device on (report_simka.rs_in = device.did)'
      
        '   left outer join simka simka1 on (report_simka.rs_num_all = si' +
        'mka1.sid)'
      
        '   left outer join simka simka2 on (report_simka.rs_num_busy = s' +
        'imka2.sid)'
      
        'order by report_day.rd_date, report_simka.rs_owner, report_simka' +
        '.rsid')
    Transaction = pfbtrnsView
    Database = DB
    Left = 56
    Top = 160
    object fbdtfldViewRD_DATE: TFIBDateField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'RD_DATE'
      Origin = 'REPORT_DAY.RD_DATE'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object fbstrngfldViewTP_NAME: TFIBStringField
      DisplayLabel = #1058#1072#1088#1080#1092#1085#1099#1081' '#1087#1083#1072#1085
      FieldName = 'TP_NAME'
      Origin = 'TARIF_PLAN.TP_NAME'
      Size = 50
      EmptyStrToNull = True
    end
    object fbcdfldViewTP_ABON_BOARD: TFIBBCDField
      DisplayLabel = #1040#1073#1086#1085'.'#1087#1083#1072#1090#1072
      FieldName = 'TP_ABON_BOARD'
      Origin = 'TARIF_PLAN.TP_ABON_BOARD'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
      Size = 2
      RoundByScale = True
    end
    object fbntgrfldViewTP_SMS_MONTH: TFIBIntegerField
      DefaultExpression = '0'
      DisplayLabel = #1057#1052#1057' '#1085#1072' '#1084#1077#1089'.'
      FieldName = 'TP_SMS_MONTH'
      Origin = 'TARIF_PLAN.TP_SMS_MONTH'
    end
    object fbntgrfldViewRS_SMS: TFIBIntegerField
      DefaultExpression = '0'
      DisplayLabel = #1057#1052#1057
      FieldName = 'RS_SMS'
      Origin = 'REPORT_SIMKA.RS_SMS'
    end
    object fbstrngfldViewTP_CLIR: TFIBStringField
      DisplayLabel = #1040#1085#1090#1087#1088'.'#1085'-'#1088#1072
      FieldName = 'TP_CLIR'
      Origin = 'TARIF_PLAN.TP_CLIR'
      Size = 1
      EmptyStrToNull = True
    end
    object fbcdfldViewTP_CLIR_PRICE: TFIBBCDField
      DisplayLabel = #1040#1085#1090#1080#1086#1087#1088'.'#1094#1077#1085#1072
      FieldName = 'TP_CLIR_PRICE'
      Origin = 'TARIF_PLAN.TP_CLIR_PRICE'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
      Size = 2
      RoundByScale = True
    end
    object fbntgrfldViewD_NUM: TFIBIntegerField
      DefaultExpression = '0'
      DisplayLabel = #1059#1089#1090#1088'-'#1074#1086' '#8470
      FieldName = 'D_NUM'
      Origin = 'DEVICE.D_NUM'
    end
    object fbstrngfldViewD_TITLE: TFIBStringField
      DisplayLabel = #1053#1072#1079#1074'.'#1091#1089#1090#1088'-'#1074#1072
      FieldName = 'D_TITLE'
      Origin = 'DEVICE.D_TITLE'
      EmptyStrToNull = True
    end
    object fbstrngfldViewO_NAME: TFIBStringField
      DisplayLabel = #1042#1083#1072#1076#1077#1083#1077#1094
      FieldName = 'O_NAME'
      Origin = 'OWNER.O_NAME'
      Size = 50
      EmptyStrToNull = True
    end
    object fbstrngfldViewS_NUMBER: TFIBStringField
      DisplayLabel = 'SIM - '#1082#1072#1088#1090#1072
      FieldName = 'S_NUMBER'
      Origin = 'SIMKA.S_NUMBER'
      Size = 12
      EmptyStrToNull = True
    end
    object fbntgrfldViewRS_SIMKA: TFIBIntegerField
      FieldName = 'RS_SIMKA'
      Origin = 'REPORT_SIMKA.RS_SIMKA'
    end
    object fbntgrfldViewRS_OWNER: TFIBIntegerField
      FieldName = 'RS_OWNER'
      Origin = 'REPORT_SIMKA.RS_OWNER'
    end
    object fbntgrfldViewRS_IN: TFIBIntegerField
      FieldName = 'RS_IN'
      Origin = 'REPORT_SIMKA.RS_IN'
    end
    object fbntgrfldViewRSID: TFIBIntegerField
      FieldName = 'RSID'
      Origin = 'REPORT_SIMKA.RSID'
    end
    object fbstrngfldViewRS_STATUS: TFIBStringField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'RS_STATUS'
      Origin = 'REPORT_SIMKA.RS_STATUS'
      Size = 1
      EmptyStrToNull = True
    end
    object fbstrngfldViewLR_INK_ADIO: TFIBStringField
      DisplayLabel = #1057#1074#1103#1079#1100
      FieldName = 'LR_INK_ADIO'
      Origin = 'LINK_RADIO.LR_INK_ADIO'
      Size = 50
      EmptyStrToNull = True
    end
    object fbstrngfldViewPC_ART_ALL: TFIBStringField
      DisplayLabel = #1056#1086#1083#1100
      FieldName = 'PC_ART_ALL'
      Origin = 'PART_CALL.PC_ART_ALL'
      Size = 50
      EmptyStrToNull = True
    end
    object fbstrngfldViewOL_PERATOR_INK: TFIBStringField
      DisplayLabel = #1054#1087#1077#1088#1072#1090#1086#1088
      FieldName = 'OL_PERATOR_INK'
      Origin = 'OPERATOR_LINK.OL_PERATOR_INK'
      Size = 50
      EmptyStrToNull = True
    end
    object fbcdfldViewRB_SUM: TFIBBCDField
      DefaultExpression = '0'
      DisplayLabel = #1041#1072#1083#1072#1085#1089
      FieldName = 'RB_SUM'
      Origin = 'REPORT_BALANCE.RB_SUM'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
      Size = 2
      RoundByScale = True
    end
    object fbstrngfldViewU_SER: TFIBStringField
      DisplayLabel = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
      FieldName = 'U_SER'
      Origin = 'USER.U_SER'
      Size = 50
      EmptyStrToNull = True
    end
    object fbstrngfldViewU_LOCATION: TFIBStringField
      DisplayLabel = #1040#1076#1088#1077#1089' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      FieldName = 'U_LOCATION'
      Origin = 'USER.U_LOCATION'
      Size = 50
      EmptyStrToNull = True
    end
    object fbstrngfldViewUB_SER_RUNCH: TFIBStringField
      DisplayLabel = #1054#1090#1076#1077#1083
      FieldName = 'UB_SER_RUNCH'
      Origin = 'USER_BRUNCH.UB_SER_RUNCH'
      Size = 50
      EmptyStrToNull = True
    end
    object fbstrngfldViewRS_IFINSTALL: TFIBStringField
      DisplayLabel = #1059#1089#1090#1072#1085#1086#1074#1083#1077#1085#1072
      FieldName = 'RS_IFINSTALL'
      Origin = 'REPORT_SIMKA.RS_IFINSTALL'
      Size = 1
      EmptyStrToNull = True
    end
    object fbstrngfldViewRS_ICC_SIM: TFIBStringField
      DisplayLabel = 'ICCID'
      FieldName = 'RS_ICC_SIM'
      Origin = 'REPORT_SIMKA.RS_ICC_SIM'
      Size = 25
      EmptyStrToNull = True
    end
    object fbstrngfldViewRS_PUK1: TFIBStringField
      DisplayLabel = 'PUK1'
      FieldName = 'RS_PUK1'
      Origin = 'REPORT_SIMKA.RS_PUK1'
      Size = 15
      EmptyStrToNull = True
    end
    object fbstrngfldViewRS_PUK2: TFIBStringField
      DisplayLabel = 'PUK2'
      FieldName = 'RS_PUK2'
      Origin = 'REPORT_SIMKA.RS_PUK2'
      Size = 15
      EmptyStrToNull = True
    end
    object fbstrngfldViewPA_RSNL_CNT: TFIBStringField
      DisplayLabel = 'ID '#1083#1080#1094'. '#1089#1095#1077#1090#1072
      FieldName = 'PA_RSNL_CNT'
      Origin = 'PRCNL_ACNT.PA_RSNL_CNT'
      Size = 50
      EmptyStrToNull = True
    end
    object fbstrngfldViewP_SURNAME: TFIBStringField
      DisplayLabel = #1054#1090#1095#1077#1090' '#1089#1086#1089#1090#1072#1074#1080#1083
      FieldName = 'P_SURNAME'
      Origin = 'PEOPLE.P_SURNAME'
      Size = 50
      EmptyStrToNull = True
    end
    object fbstrngfldViewP_NAME: TFIBStringField
      DisplayLabel = #1054#1090#1095#1077#1090' '#1089#1086#1089#1090#1072#1074#1080#1083' ('#1048#1084#1103')'
      FieldName = 'P_NAME'
      Origin = 'PEOPLE.P_NAME'
      Size = 50
      EmptyStrToNull = True
    end
    object fbstrngfldViewP_PATRONYMIC: TFIBStringField
      DisplayLabel = #1054#1090#1095#1077#1090' '#1089#1086#1089#1090#1072#1074#1080#1083' ('#1054#1090#1095#1077#1089#1090#1074#1086')'
      FieldName = 'P_PATRONYMIC'
      Origin = 'PEOPLE.P_PATRONYMIC'
      Size = 50
      EmptyStrToNull = True
    end
    object fbntgrfldViewRS_TARIFPLAN: TFIBIntegerField
      FieldName = 'RS_TARIFPLAN'
      Origin = 'REPORT_SIMKA.RS_TARIFPLAN'
    end
    object fbntgrfldViewRS_PART_CALL: TFIBIntegerField
      FieldName = 'RS_PART_CALL'
      Origin = 'REPORT_SIMKA.RS_PART_CALL'
    end
    object fbdtfldViewRS_REPORTDAY: TFIBDateField
      FieldName = 'RS_REPORTDAY'
      Origin = 'REPORT_SIMKA.RS_REPORTDAY'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object fbntgrfldViewRS_BALANCE: TFIBIntegerField
      FieldName = 'RS_BALANCE'
      Origin = 'REPORT_SIMKA.RS_BALANCE'
    end
    object fbntgrfldViewRS_USER: TFIBIntegerField
      FieldName = 'RS_USER'
      Origin = 'REPORT_SIMKA.RS_USER'
    end
    object fbntgrfldViewRS_USER_BRUNCH: TFIBIntegerField
      FieldName = 'RS_USER_BRUNCH'
      Origin = 'REPORT_SIMKA.RS_USER_BRUNCH'
    end
    object fbntgrfldViewRB_PRSNL_ACNT: TFIBIntegerField
      FieldName = 'RB_PRSNL_ACNT'
      Origin = 'REPORT_BALANCE.RB_PRSNL_ACNT'
    end
    object fbntgrfldViewRD_RESPONS: TFIBIntegerField
      FieldName = 'RD_RESPONS'
      Origin = 'REPORT_DAY.RD_RESPONS'
    end
    object fbstrngfldViewRS_RADRSNG_ALL: TFIBStringField
      DisplayLabel = #1055#1077#1088#1077#1072#1076#1088'.'#1074#1089#1077
      FieldName = 'RS_RADRSNG_ALL'
      Origin = 'REPORT_SIMKA.RS_RADRSNG_ALL'
      Size = 1
      EmptyStrToNull = True
    end
    object fbstrngfldViewRS_RADRSNG_BUSY: TFIBStringField
      DisplayLabel = #1055#1077#1088#1077#1072#1076#1088'.'#1079#1072#1085#1103#1090
      FieldName = 'RS_RADRSNG_BUSY'
      Origin = 'REPORT_SIMKA.RS_RADRSNG_BUSY'
      Size = 1
      EmptyStrToNull = True
    end
    object fbstrngfldViewRS_RADRSNG_NOANSWR: TFIBStringField
      DisplayLabel = #1055#1077#1088#1077#1072#1076#1088'.'#1085#1077' '#1086#1090#1074'.'
      FieldName = 'RS_RADRSNG_NOANSWR'
      Origin = 'REPORT_SIMKA.RS_RADRSNG_NOANSWR'
      Size = 1
      EmptyStrToNull = True
    end
    object fbstrngfldViewRS_RADRSNG_OUTSD: TFIBStringField
      DisplayLabel = #1055#1077#1088#1077#1072#1076#1088'.'#1074#1085#1077' '#1079#1086#1085#1099
      FieldName = 'RS_RADRSNG_OUTSD'
      Origin = 'REPORT_SIMKA.RS_RADRSNG_OUTSD'
      Size = 1
      EmptyStrToNull = True
    end
    object fbntgrfldViewRS_NUM_ALL: TFIBIntegerField
      DisplayLabel = #8470#1090#1077#1083'. '#1074#1089#1077
      FieldName = 'RS_NUM_ALL'
      Origin = 'REPORT_SIMKA.RS_NUM_ALL'
    end
    object fbntgrfldViewRS_NUM_BUSY: TFIBIntegerField
      DisplayLabel = #8470#1090#1077#1083'. '#1079#1072#1085#1103#1090
      FieldName = 'RS_NUM_BUSY'
      Origin = 'REPORT_SIMKA.RS_NUM_BUSY'
    end
    object fbntgrfldViewRS_NUM_NOANSWR: TFIBIntegerField
      DisplayLabel = #8470#1090#1077#1083'. '#1085#1077' '#1086#1090#1074'.'
      FieldName = 'RS_NUM_NOANSWR'
      Origin = 'REPORT_SIMKA.RS_NUM_NOANSWR'
    end
    object fbntgrfldViewRS_NUM_OUTSD: TFIBIntegerField
      DisplayLabel = #8470#1090#1077#1083'. '#1074#1085#1077' '#1079#1086#1085#1099
      FieldName = 'RS_NUM_OUTSD'
      Origin = 'REPORT_SIMKA.RS_NUM_OUTSD'
    end
    object fbstrngfldViewS_NUMBER1: TFIBStringField
      DisplayLabel = #8470' '#1090#1077#1083'. '#1074#1089#1077
      FieldName = 'S_NUMBER1'
      Size = 12
      EmptyStrToNull = True
    end
    object fbstrngfldViewS_NUMBER2: TFIBStringField
      DisplayLabel = #8470' '#1090#1077#1083'. '#1079#1072#1085#1103#1090
      FieldName = 'S_NUMBER2'
      Size = 12
      EmptyStrToNull = True
    end
    object fbstrngfldViewS_NUMBER3: TFIBStringField
      DisplayLabel = #8470' '#1090#1077#1083'. '#1085#1077#1090' '#1086#1090#1074'.'
      FieldName = 'S_NUMBER3'
      Size = 12
      EmptyStrToNull = True
    end
    object fbstrngfldViewS_NUMBER4: TFIBStringField
      DisplayLabel = #8470' '#1090#1077#1083'. '#1074#1085#1077' '#1079#1086#1085#1099
      FieldName = 'S_NUMBER4'
      Size = 12
      EmptyStrToNull = True
    end
  end
end
