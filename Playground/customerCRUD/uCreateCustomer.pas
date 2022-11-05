unit uCreateCustomer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uDTMConnection;

type
  TfrmCreateCustomer = class(TForm)
    ledtNome: TLabeledEdit;
    ledtEndereco: TLabeledEdit;
    ledtCpfCnpj: TLabeledEdit;
    ledtDivida: TLabeledEdit;
    btnSubmit: TButton;
    procedure btnSubmitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCreateCustomer: TfrmCreateCustomer;

implementation

{$R *.dfm}

procedure TfrmCreateCustomer.btnSubmitClick(Sender: TObject);
var
  nome: string;
  endereco: string;
  cpfCnpj: string;
  divida: integer;
begin
  nome := ledtNome.Text;
  endereco := ledtEndereco.Text;
  cpfCnpj := ledtCpfCnpj.Text;
  divida := StrToInt(ledtdivida.Text);

  with dtmConnection do
  begin
    qr.ExecSQL
      ('INSERT INTO clients (nome, endereco, cpfCnpj, divida)' +
      'VALUES (:nome, :endereco, :cpfCnpj, :divida)',
      [nome, endereco, cpfCnpj, divida]);

    qr.Open('SELECT * FROM clients');
  end;
end;

end.
