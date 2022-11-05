program customerCRUD;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmCustomerRegistration},
  uDTMConnection in 'uDTMConnection.pas' {dtmConnection: TDataModule},
  uCreateCustomer in 'uCreateCustomer.pas' {frmCreateCustomer},
  uSearchCustomer in 'uSearchCustomer.pas' {frmSearchCustomer},
  uUpdateCustomer in 'uUpdateCustomer.pas' {frmUpdateCustomer},
  uDeleteCustomer in 'uDeleteCustomer.pas' {frmDeleteCustomer};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCustomerRegistration, frmCustomerRegistration);
  Application.CreateForm(TdtmConnection, dtmConnection);
  Application.CreateForm(TfrmCreateCustomer, frmCreateCustomer);
  Application.CreateForm(TfrmSearchCustomer, frmSearchCustomer);
  Application.CreateForm(TfrmUpdateCustomer, frmUpdateCustomer);
  Application.CreateForm(TfrmDeleteCustomer, frmDeleteCustomer);
  Application.Run;
end.
