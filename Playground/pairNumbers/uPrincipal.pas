unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    ledtNumber: TLabeledEdit;
    memResult: TMemo;
    btnCalc: TButton;
    btnPopulateArray: TButton;
    procedure btnPopulateArrayClick(Sender: TObject);
    procedure btnCalcClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

var
  allNumbers: Array of Integer;
{$R *.dfm}

procedure TfrmPrincipal.btnCalcClick(Sender: TObject);
var
  number: Integer;
begin
  memResult.Lines.Clear;

  for number in allNumbers do
  begin

    if number mod 2 = 0 then
    begin
      memResult.Lines.Add(number.ToString);
    end;
  end;

end;

procedure TfrmPrincipal.btnPopulateArrayClick(Sender: TObject);
begin

  setLength(allNumbers, Length(allNumbers) + 1);
  allNumbers[Length(allNumbers) - 1] := StrToInt(ledtNumber.Text);
  ledtNumber.Text := '';

end;

end.
