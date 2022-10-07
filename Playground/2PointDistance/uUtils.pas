unit uUtils;

interface

uses
  Math, Vcl.StdCtrls, System.SysUtils;

function calcDistancia(pontoUm, pontoDois: Array of double): double;
procedure exibirMensagem(Memo: TMemo; resultado: double;
  msg: string = 'A dist�ncia entre os pontos 1 e 2 � de: ');

implementation

procedure exibirMensagem(Memo: TMemo; resultado: double;
  msg: string = 'A dist�ncia entre os pontos 1 e 2 � de: ');
begin
  Memo.Lines.Clear;
  Memo.Lines.add(msg + formatFloat('0.####', resultado));

end;

function calcDistancia(pontoUm, pontoDois: Array of double): double;
var
  distancia: double;

begin

  result := sqrt(Power(pontoUm[0] - pontoDois[0], 2) +
    Power(pontoUm[1] - pontoDois[1], 2));

end;

end.
