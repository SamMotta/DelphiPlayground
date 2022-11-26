unit classes.debt;

interface

uses
  interfaces.debt, uPrincipal;

type
  TDebt = class(TInterfacedObject, iDebt)
  private
    FId: integer;
    FDescription, FDebtorName, FDebtorPhoneNumber, FDebtType: string;
    FDebt: double;
    FDebtStatus: boolean;
  public
    function id(aValue: integer): iDebt; overload;
    function description(aValue: string): iDebt; overload;
    function debtorName(aValue: string): iDebt; overload;
    function debtorPhoneNumber(aValue: string): iDebt; overload;
    function debt(aValue: double): iDebt; overload;
    function debtType(aValue: string): iDebt; overload;
    function debtStatus(aValue: boolean): iDebt; overload;

    function id: integer; overload;
    function description: string; overload;
    function debtorName: string; overload;
    function debtorPhoneNumber: string; overload;
    function debt: double; overload;
    function debtType: string; overload;
    function debtStatus: boolean; overload;

    constructor Create;
    destructor Destroy; override;
    class function New: iDebt;
  end;

implementation

{ TDebt }

constructor TDebt.Create;
begin

end;

function TDebt.debt: double;
begin
  Result := FDebt;
end;

function TDebt.debt(aValue: double): iDebt;
var
  formatControl: string;
begin
  Result := Self;
  FDebt := aValue;
end;

function TDebt.debtorName: string;
begin
  Result := FDebtorName;
end;

function TDebt.debtorName(aValue: string): iDebt;
begin
  Result := Self;
  FDebtorName := aValue;
end;

function TDebt.debtorPhoneNumber: string;
begin
  Result := FDebtorPhoneNumber;
end;

function TDebt.debtorPhoneNumber(aValue: string): iDebt;
begin
  Result := Self;
  FDebtorPhoneNumber := aValue;
end;

function TDebt.debtStatus(aValue: boolean): iDebt;
begin
  Result := Self;
  FDebtStatus := aValue;
end;

function TDebt.debtStatus: boolean;
begin
  Result := FDebtStatus;
end;

function TDebt.debtType: string;
begin
  Result := FDebtType;
end;

function TDebt.debtType(aValue: string): iDebt;
begin
  Result := Self;
  FDebtType := aValue;
end;

function TDebt.description: string;
begin
  Result := FDescription;
end;

function TDebt.description(aValue: string): iDebt;
begin
  Result := Self;
  FDescription := aValue;
end;

destructor TDebt.Destroy;
begin

  inherited;
end;

function TDebt.id: integer;
begin
  Result := FId;
end;

function TDebt.id(aValue: integer): iDebt;
begin
  Result := Self;
  FId := aValue;
end;

class function TDebt.New: iDebt;
begin
  Result := Self.Create;
end;

end.
