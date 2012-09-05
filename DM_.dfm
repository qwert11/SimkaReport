object DM: TDM
  OldCreateOrder = False
  Left = 1426
  Top = 715
  Height = 259
  Width = 174
  object DB: TpFIBDatabase
    Connected = True
    DBName = 'd:\Prog\SimkaReport\SimkaReport.FDB'
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
      '    report_simka.rs_num_all,'
      '    report_simka.rs_num_busy,'
      '    report_simka.rs_num_noanswr,'
      '    report_simka.rs_num_outsd'
      'from user_brunch'
      
        '   inner join report_simka on (user_brunch.ub_id = report_simka.' +
        'rs_user_brunch)'
      
        '   inner join report_day on (report_simka.rs_reportday = report_' +
        'day.rd_date)'
      '   inner join people on (report_day.rd_respons = people.p_id)'
      '   inner join device on (report_simka.rs_in = device.did)'
      '   inner join owner on (report_simka.rs_owner = owner.oid)'
      '   inner join simka on (report_simka.rs_simka = simka.sid)'
      
        '   inner join link_radio on (simka.s_link_radio = link_radio.lr_' +
        'id)'
      
        '   inner join operator_link on (simka.s_operator = operator_link' +
        '.ol_id)'
      
        '   inner join tarif_plan on (report_simka.rs_tarifplan = tarif_p' +
        'lan.tpid)'
      
        '   inner join part_call on (report_simka.rs_part_call = part_cal' +
        'l.pc_id)'
      
        '   inner join report_balance on (report_simka.rs_balance = repor' +
        't_balance.rb_id)'
      
        '   inner join prcnl_acnt on (report_balance.rb_prsnl_acnt = prcn' +
        'l_acnt.pa_id)'
      '   inner join "USER" on (report_simka.rs_user = "USER".u_id)'
      
        'order by report_day.rd_date, report_simka.rs_owner, report_simka' +
        '.rsid')
    Transaction = pfbtrnsView
    Database = DB
    Left = 56
    Top = 160
    object fbdtfldViewRD_DATE: TFIBDateField
      FieldName = 'RD_DATE'
      Origin = 'REPORT_DAY.RD_DATE'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object fbstrngfldViewTP_NAME: TFIBStringField
      FieldName = 'TP_NAME'
      Origin = 'TARIF_PLAN.TP_NAME'
      Size = 50
      EmptyStrToNull = True
    end
    object fbcdfldViewTP_ABON_BOARD: TFIBBCDField
      FieldName = 'TP_ABON_BOARD'
      Origin = 'TARIF_PLAN.TP_ABON_BOARD'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
      Size = 2
      RoundByScale = True
    end
    object fbntgrfldViewTP_SMS_MONTH: TFIBIntegerField
      DefaultExpression = '0'
      FieldName = 'TP_SMS_MONTH'
      Origin = 'TARIF_PLAN.TP_SMS_MONTH'
    end
    object fbntgrfldViewRS_SMS: TFIBIntegerField
      DefaultExpression = '0'
      FieldName = 'RS_SMS'
      Origin = 'REPORT_SIMKA.RS_SMS'
    end
    object fbntgrfldViewD_NUM: TFIBIntegerField
      DefaultExpression = '0'
      FieldName = 'D_NUM'
      Origin = 'DEVICE.D_NUM'
    end
    object fbstrngfldViewD_TITLE: TFIBStringField
      FieldName = 'D_TITLE'
      Origin = 'DEVICE.D_TITLE'
      EmptyStrToNull = True
    end
    object fbstrngfldViewO_NAME: TFIBStringField
      FieldName = 'O_NAME'
      Origin = 'OWNER.O_NAME'
      Size = 50
      EmptyStrToNull = True
    end
    object fbstrngfldViewS_NUMBER: TFIBStringField
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
    object fbstrngfldViewTP_CLIR: TFIBStringField
      FieldName = 'TP_CLIR'
      Origin = 'TARIF_PLAN.TP_CLIR'
      Size = 1
      EmptyStrToNull = True
    end
    object fbcdfldViewTP_CLIR_PRICE: TFIBBCDField
      FieldName = 'TP_CLIR_PRICE'
      Origin = 'TARIF_PLAN.TP_CLIR_PRICE'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
      Size = 2
      RoundByScale = True
    end
    object fbstrngfldViewLR_INK_ADIO: TFIBStringField
      FieldName = 'LR_INK_ADIO'
      Origin = 'LINK_RADIO.LR_INK_ADIO'
      Size = 50
      EmptyStrToNull = True
    end
    object fbstrngfldViewRS_STATUS: TFIBStringField
      FieldName = 'RS_STATUS'
      Origin = 'REPORT_SIMKA.RS_STATUS'
      Size = 1
      EmptyStrToNull = True
    end
    object fbstrngfldViewPC_ART_ALL: TFIBStringField
      FieldName = 'PC_ART_ALL'
      Origin = 'PART_CALL.PC_ART_ALL'
      Size = 50
      EmptyStrToNull = True
    end
    object fbstrngfldViewOL_PERATOR_INK: TFIBStringField
      FieldName = 'OL_PERATOR_INK'
      Origin = 'OPERATOR_LINK.OL_PERATOR_INK'
      Size = 50
      EmptyStrToNull = True
    end
    object fbcdfldViewRB_SUM: TFIBBCDField
      DefaultExpression = '0'
      FieldName = 'RB_SUM'
      Origin = 'REPORT_BALANCE.RB_SUM'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
      Size = 2
      RoundByScale = True
    end
    object fbstrngfldViewU_SER: TFIBStringField
      FieldName = 'U_SER'
      Origin = 'USER.U_SER'
      Size = 50
      EmptyStrToNull = True
    end
    object fbstrngfldViewU_LOCATION: TFIBStringField
      FieldName = 'U_LOCATION'
      Origin = 'USER.U_LOCATION'
      Size = 50
      EmptyStrToNull = True
    end
    object fbstrngfldViewUB_SER_RUNCH: TFIBStringField
      FieldName = 'UB_SER_RUNCH'
      Origin = 'USER_BRUNCH.UB_SER_RUNCH'
      Size = 50
      EmptyStrToNull = True
    end
    object fbstrngfldViewRS_IFINSTALL: TFIBStringField
      FieldName = 'RS_IFINSTALL'
      Origin = 'REPORT_SIMKA.RS_IFINSTALL'
      Size = 1
      EmptyStrToNull = True
    end
    object fbstrngfldViewRS_ICC_SIM: TFIBStringField
      FieldName = 'RS_ICC_SIM'
      Origin = 'REPORT_SIMKA.RS_ICC_SIM'
      Size = 25
      EmptyStrToNull = True
    end
    object fbstrngfldViewRS_PUK1: TFIBStringField
      FieldName = 'RS_PUK1'
      Origin = 'REPORT_SIMKA.RS_PUK1'
      Size = 15
      EmptyStrToNull = True
    end
    object fbstrngfldViewRS_PUK2: TFIBStringField
      FieldName = 'RS_PUK2'
      Origin = 'REPORT_SIMKA.RS_PUK2'
      Size = 15
      EmptyStrToNull = True
    end
    object fbstrngfldViewPA_RSNL_CNT: TFIBStringField
      FieldName = 'PA_RSNL_CNT'
      Origin = 'PRCNL_ACNT.PA_RSNL_CNT'
      Size = 50
      EmptyStrToNull = True
    end
    object fbstrngfldViewP_SURNAME: TFIBStringField
      FieldName = 'P_SURNAME'
      Origin = 'PEOPLE.P_SURNAME'
      Size = 50
      EmptyStrToNull = True
    end
    object fbstrngfldViewP_NAME: TFIBStringField
      FieldName = 'P_NAME'
      Origin = 'PEOPLE.P_NAME'
      Size = 50
      EmptyStrToNull = True
    end
    object fbstrngfldViewP_PATRONYMIC: TFIBStringField
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
      FieldName = 'RS_RADRSNG_ALL'
      Size = 1
      EmptyStrToNull = True
    end
    object fbstrngfldViewRS_RADRSNG_BUSY: TFIBStringField
      FieldName = 'RS_RADRSNG_BUSY'
      Size = 1
      EmptyStrToNull = True
    end
    object fbstrngfldViewRS_RADRSNG_NOANSWR: TFIBStringField
      FieldName = 'RS_RADRSNG_NOANSWR'
      Size = 1
      EmptyStrToNull = True
    end
    object fbstrngfldViewRS_RADRSNG_OUTSD: TFIBStringField
      FieldName = 'RS_RADRSNG_OUTSD'
      Size = 1
      EmptyStrToNull = True
    end
    object fbntgrfldViewRS_NUM_ALL: TFIBIntegerField
      FieldName = 'RS_NUM_ALL'
    end
    object fbntgrfldViewRS_NUM_BUSY: TFIBIntegerField
      FieldName = 'RS_NUM_BUSY'
    end
    object fbntgrfldViewRS_NUM_NOANSWR: TFIBIntegerField
      FieldName = 'RS_NUM_NOANSWR'
    end
    object fbntgrfldViewRS_NUM_OUTSD: TFIBIntegerField
      FieldName = 'RS_NUM_OUTSD'
    end
  end
end
