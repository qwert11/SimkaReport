program SimReportDay;

uses
  Forms,
  MainFrm in 'MainFrm.pas' {frmMain},
  ChaildFrm in 'include\ChaildFrm.pas' {ChaildForm},
  SimkaFrm in 'SimkaFrm.pas' {frmSimka},
  TarifPlanFrm in 'TarifPlanFrm.pas' {frmTarifPlan},
  OwnerFrm in 'OwnerFrm.pas' {frmOwner},
  DM_ in 'DM_.pas' {DM: TDataModule},
  CustomerFunctions in 'CustomerFunctions.pas',
  CustomerGlobals in 'CustomerGlobals.pas',
  EditingReportFrm in 'EditingReportFrm.pas' {frmEditingReport},
  DeviceFrm in 'DeviceFrm.pas' {frmDevice},
  AuthentificationFrm in 'AuthentificationFrm.pas' {frmAuthentification},
  RegistrationFrm in 'RegistrationFrm.pas' {frmRegistration},
  PeopleFrm in 'PeopleFrm.pas' {frmPeople},
  PartCallFrm in 'PartCallFrm.pas' {frmPartCall},
  LinkRadioFrm in 'LinkRadioFrm.pas' {frmLinkRadio},
  AuthorizationFrm in 'AuthorizationFrm.pas' {frmAuthorization},
  OperatorsFrm in 'OperatorsFrm.pas' {frmOperators},
  PersonalAccountFrm in 'PersonalAccountFrm.pas' {frmPersonalAccount},
  UserFrm in 'UserFrm.pas' {frmUser},
  UserBrunchFrm in 'UserBrunchFrm.pas' {frmUserBrunch};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Отчет по SIM картам 2';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmDevice, frmDevice);
  Application.CreateForm(TfrmAuthentification, frmAuthentification);
  Application.CreateForm(TfrmRegistration, frmRegistration);
  Application.CreateForm(TfrmPeople, frmPeople);
  Application.CreateForm(TfrmPartCall, frmPartCall);
  Application.CreateForm(TfrmLinkRadio, frmLinkRadio);
  Application.CreateForm(TfrmAuthorization, frmAuthorization);
  Application.CreateForm(TfrmOperators, frmOperators);
  Application.CreateForm(TfrmPersonalAccount, frmPersonalAccount);
  Application.CreateForm(TfrmUser, frmUser);
  Application.CreateForm(TfrmUserBrunch, frmUserBrunch);
  //Application.CreateForm(TChaildForm, ChaildForm);
  Application.CreateForm(TfrmTarifPlan, frmTarifPlan);
  Application.CreateForm(TfrmSimka, frmSimka);
  Application.CreateForm(TfrmOwner, frmOwner);
  // Application.CreateForm(TfrmEditingReport, frmEditingReport);
  Application.Run;
end.
