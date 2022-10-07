unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmMedia = class(TForm)
    memoResult: TMemo;
    ledtIn: TLabeledEdit;
    btnCalc: TButton;
    procedure btnCalcClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  TNumeros = Array of Double;
var
  frmMedia: TfrmMedia;

implementation

uses
  uUtils;
{$R *.dfm}

procedure TfrmMedia.btnCalcClick(Sender: TObject);
var
  charArray: Array [0 .. 0] of Char;
  numeros: TNumeros;
  strArray: TArray<string>;
  text: string;
  I: Integer;
begin
  charArray[0] := ' ';
  text := ledtIn.text;
  strArray := text.split(charArray);
  setLength(numeros, Length(strArray));

  for I := Low(strArray) to High(strArray) do
  begin
    numeros[I] := strToFloat(strArray[I]);
  end;
  showMedian(memoResult, doCalc(numeros), numeros);
end;

end.
