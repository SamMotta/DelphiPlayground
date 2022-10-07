unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    btnOpenJS: TButton;
    edtResultado: TLabeledEdit;
    btnOpenJC: TButton;
    procedure btnOpenJSClick(Sender: TObject);
    procedure btnOpenJCClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;
  resultado: double;

implementation

uses
  uJurosSimples, uJurosCompostos;

{$R *.dfm}

procedure TfrmPrincipal.btnOpenJCClick(Sender: TObject);
var
  formJC: TfrmJurosCompostos;
begin
  formJC := TfrmJurosCompostos.Create(nil);
  formJC.ShowModal;
  formJC.Free;

  edtResultado.Text := 'R$ ' + FloatToStr(resultado);
end;

procedure TfrmPrincipal.btnOpenJSClick(Sender: TObject);
var
  formJS: TfrmJurosSimples;
begin
  formJS := TfrmJurosSimples.Create(nil);
  formJS.ShowModal;
  formJS.Free;

  edtResultado.Text := 'R$ ' + FloatToStr(resultado);
end;

end.
