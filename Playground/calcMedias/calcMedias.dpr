program calcMedias;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmMedia},
  uUtils in 'uUtils.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMedia, frmMedia);
  Application.Run;
end.
