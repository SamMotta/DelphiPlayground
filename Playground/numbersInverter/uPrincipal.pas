unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TfrmPrincipal = class(TForm)
    ledtFirstValue: TLabeledEdit;
    ledtSecondValue: TLabeledEdit;
    btnInverter: TButton;
    procedure btnInverterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnInverterClick(Sender: TObject);
var
  values: TArray<String>;
begin
  setLength(values, 2);

  values[0] := ledtFirstValue.Text;
  values[1] := ledtSecondValue.Text;

  ledtFirstValue.Text := values[1];
  ledtSecondValue.Text := values[0];
end;

end.
