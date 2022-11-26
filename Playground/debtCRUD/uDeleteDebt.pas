unit uDeleteDebt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmAdmin = class(TForm)
    DBGrid1: TDBGrid;
    btnDelete: TButton;
    edtDebtId: TLabeledEdit;
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAdmin: TfrmAdmin;

implementation

uses
  dm, interfaces.debt, Classes.debt;

{$R *.dfm}

procedure TfrmAdmin.btnDeleteClick(Sender: TObject);
var
  debt: iDebt;

begin
  debt := TDebt.New;

  try
    debt.id(StrToInt(edtDebtId.Text));
  except
    ShowMessage('Digite um c�digo v�lido');
    exit;
  end;

  with DataModule1 do
  begin
    qr.First;
    while not qr.EoF do
    begin
      if (debt.id = qr.FieldByName('id').AsInteger) then
      begin
        debt.debtorName(qr.FieldByName('debtorName').AsString);
        break;
      end;
      qr.Next;
    end;

    if (length(debt.debtorName) <> 0) then
    begin
      qr.ExecSQL('DELETE FROM debts WHERE debts.id = :debtId',
        [debt.id]);

      qr.Open('SELECT * FROM debts');
    end
    else
    begin
      ShowMessage('ID inv�lido!');
    end;

    qr.First;
    edtDebtId.Text := EmptyStr;
  end;

end;

end.
