program calc;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {equationForm},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TequationForm, equationForm);
  Application.Run;
end.
