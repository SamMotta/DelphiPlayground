program multiform;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uJurosSimples in 'uJurosSimples.pas' {frmJurosSimples},
  uJurosCompostos in 'uJurosCompostos.pas' {frmJurosCompostos};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmJurosSimples, frmJurosSimples);
  Application.CreateForm(TfrmJurosCompostos, frmJurosCompostos);
  Application.Run;
end.
