unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Vcl.ExtCtrls, JPEG;

type
  TequationForm = class(TForm)
    btnResultado: TButton;
    aviso: TLabel;
    ValueA: TLabeledEdit;
    ValueB: TLabeledEdit;
    ValueC: TLabeledEdit;
    resultX1: TLabeledEdit;
    resultX2: TLabeledEdit;
    Image1: TImage;
    procedure btnResultadoClick(Sender: TObject);
    procedure activated(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  equationForm: TequationForm;

implementation

{$R *.dfm}

procedure TequationForm.btnResultadoClick(Sender: TObject);
var
  numA, numB, numC, delta, x1, x2: Double;

begin
  numA := StrToFloat(ValueA.Text);
  numB := StrToFloat(ValueB.Text);
  numC := StrToFloat(ValueC.Text);

  delta := (numB * numB) - (4 * numA * numC);

  if delta < 0 then
  begin
    ShowMessage('Delta é negativo!')
  end
  else
  begin
    x1 := (-numB + Sqrt(delta)) / (numA * 2);
    x2 := (-numB - Sqrt(delta)) / (numA * 2);

    resultX1.Text := FloatToStr(x1);
    resultX2.Text := FloatToStr(x2);
  end;
end;

procedure TequationForm.activated(Sender: TObject);
begin
  Image1.Picture.LoadFromFile('C:\Users\Usuario\Downloads\paulomuzy.jpg');
end;

end.
