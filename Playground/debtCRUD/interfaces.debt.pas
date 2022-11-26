unit interfaces.debt;

interface

uses
  uPrincipal;

type
  iDebt = interface
    ['{1E282C97-19CA-4C22-9200-9731FCD6E334}']

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
  end;

implementation

end.
