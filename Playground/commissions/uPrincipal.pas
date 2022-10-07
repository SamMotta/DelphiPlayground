unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uCalc;

type
  TfrmPrincipal = class(TForm)
    ledtVendedor: TLabeledEdit;
    btnCalc: TButton;
    memResultado: TMemo;
    ledtSalarioFixo: TLabeledEdit;
    ledtTotalVendas: TLabeledEdit;
    labelMemResultado: TLabel;
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
  nomeVendedor: String;
  salarioFixo: Currency;
  totalVendas: Currency;
  totalRecebido: Currency;
begin
  memResultado.Lines.Clear;
  nomeVendedor := Trim(ledtVendedor.Text);
  salarioFixo := StrToCurr(ledtSalarioFixo.Text);
  totalVendas := StrToCurr(ledtTotalVendas.Text);

  totalRecebido := salarioFixo + calcCommissions(totalVendas);

  memResultado.Lines.Add('O total a ser recebido por ' + nomeVendedor + ' � de ' + CurrToStrF(totalRecebido, ffCurrency , 2));
end;

end.
