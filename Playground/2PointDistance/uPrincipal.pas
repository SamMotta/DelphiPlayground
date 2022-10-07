unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uUtils;

type
  TfrmPrincipal = class(TForm)
    memResultado: TMemo;
    edtP1X: TEdit;
    edtP1Y: TEdit;
    labelP1: TLabel;
    edtP2X: TEdit;
    edtP2Y: TEdit;
    labelP2: TLabel;
    btnCalc: TButton;
    procedure btnCalcClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnCalcClick(Sender: TObject);
var
  p1: Array of double;
  p2: Array of double;
  distancia: double;
begin
  SetLength(p1, 2);
  SetLength(p2, 2);

  p1[0] := StrToFloat(edtP1X.Text);
  p1[1] := StrToFloat(edtP1Y.Text);

  p2[0] := StrToFloat(edtP2X.Text);
  p2[1] := StrToFloat(edtP2Y.Text);

  distancia := calcDistancia(p1, p2);
  exibirMensagem(memResultado, distancia);

end;

end.
