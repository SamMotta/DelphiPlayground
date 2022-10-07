unit uJurosSimples;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uPrincipal;

type
  TfrmJurosSimples = class(TForm)
    edtCapital: TLabeledEdit;
    edtTaxa: TLabeledEdit;
    edtTempo: TLabeledEdit;
    btnCalcJuros: TButton;
    procedure btnCalcJurosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmJurosSimples: TfrmJurosSimples;

implementation

{$R *.dfm}

procedure TfrmJurosSimples.btnCalcJurosClick(Sender: TObject);
var
  capital, taxa, tempo: double;
begin
  capital := StrToFloat(edtCapital.Text);
  taxa := StrToFloat(edtTaxa.Text);
  tempo := StrToFloat(edtTempo.Text);

  resultado := capital * taxa * tempo;

  close;
end;

end.
