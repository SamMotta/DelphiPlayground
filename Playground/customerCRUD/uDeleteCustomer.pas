unit uDeleteCustomer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  uDTMConnection;

type
  TfrmDeleteCustomer = class(TForm)
    btnSubmit: TButton;
    ledtCpfCnpj: TLabeledEdit;
    ledtDivida: TLabeledEdit;
    ledtEndereco: TLabeledEdit;
    ledtNome: TLabeledEdit;
    ledtClientID: TLabeledEdit;
    btnDelete: TButton;
    procedure btnSubmitClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
    clientID: integer;
  public
    { Public declarations }
  end;

var
  frmDeleteCustomer: TfrmDeleteCustomer;

implementation

{$R *.dfm}

procedure TfrmDeleteCustomer.btnDeleteClick(Sender: TObject);
begin

  with DTMConnection do
  begin
    if (clientID > 0) then
    begin
      qr.ExecSQL('DELETE FROM clients WHERE clients.id = :clientID',
        [clientID]);

      qr.Open('SELECT * FROM clients');
    end else
      ShowMessage('O Identificador fornecido n�o � v�lido!');
  end;
end;

procedure TfrmDeleteCustomer.btnSubmitClick(Sender: TObject);
var
  nome: string;
  endereco: string;
  cpfCnpj: string;
  divida: integer;
begin
  clientID := StrToInt(ledtClientID.Text);

  with DTMConnection do
  begin
    while not qr.Eof do
    begin
      if (clientID = qr.FieldByName('id').AsInteger) then
      begin
        nome := qr.FieldByName('nome').AsString;
        endereco := qr.FieldByName('endereco').AsString;
        cpfCnpj := qr.FieldByName('cpfCnpj').AsString;
        divida := qr.FieldByName('divida').AsInteger;

        break;
      end;
      qr.Next;
    end;
    qr.First;
  end;

  if (length(nome) <> 0) then
  begin
    ledtNome.Text := nome;
    ledtEndereco.Text := endereco;
    ledtCpfCnpj.Text := cpfCnpj;
    ledtDivida.Text := divida.ToString;
  end
  else
  begin
    ShowMessage('N�o h� algum cliente com este ID!');
    clientID := -1;

    ledtNome.Text := EmptyStr;
    ledtEndereco.Text := EmptyStr;
    ledtCpfCnpj.Text := EmptyStr;
    ledtDivida.Text := EmptyStr;
  end;
end;

end.
