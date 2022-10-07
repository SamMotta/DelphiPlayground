unit uCalc;

interface

function calcCommissions(total: Currency): Currency;

implementation

function calcCommissions(total: Currency): Currency;
const
  comissao = 0.15;
begin
  result := total * comissao;
end;

end.
