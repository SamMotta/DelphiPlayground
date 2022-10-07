unit uUtils;

interface

uses
  Vcl.StdCtrls, System.SysUtils, uPrincipal;

function doCalc(numbers: TNumeros): double;
function parseArray(numbers: TNumeros): String;
procedure showMedian(TMemo: TMemo; number: double; numbers: TNumeros);

implementation

// Simplesmente nos mostra os dados e � a sa�da
procedure showMedian(TMemo: TMemo; number: double; numbers: TNumeros);
var
  text: string;
begin
  text := parseArray(numbers);

  TMemo.Lines.Clear;
  TMemo.Lines.Add('A m�dia dos n�meros: ' + text + ' � ' + FormatFloat('0.##', number))
end;

// Retorna um texto que cont�m todos os n�meros usados para calcular a m�dia
function parseArray(numbers: TNumeros): String;
var
  text: string;
//  J: double;
  l: Integer;

begin

  text := numbers[0].ToString;
  for l := Low(numbers) + 1 to High(numbers) do
  begin
    text := text + ', ' + numbers[l].ToString;
  end;

//  for J in numbers do
//  begin
//    text := text + ' ' + J.ToString;
//  end;

  exit(text);

end;

function doCalc(numbers: TNumeros): double;
var
  calcResult: double;
  sumResult: double;
  arrLen: integer;
  number: double;
begin
  sumResult := 0;
  arrLen := Length(numbers);

  for number in numbers do
  begin
    sumResult := sumResult + number;
  end;

  calcResult := sumResult / arrLen;
  exit(calcResult);

end;

end.
