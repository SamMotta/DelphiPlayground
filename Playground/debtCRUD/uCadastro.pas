unit uCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmCreateDebt = class(TForm)
    edtDebtDesc: TEdit;
    edtDebtorName: TEdit;
    edtDebtorPhoneNumber: TEdit;
    edtDebt: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnRegister: TButton;
    chkDebtType: TCheckBox;
    chkDebtStatus: TCheckBox;
    procedure btnRegisterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCreateDebt: TfrmCreateDebt;

implementation

uses
  dm, uPrincipal, System.SysUtils, TypInfo, interfaces.debt, Classes.debt;

{$R *.dfm}

procedure TfrmCreateDebt.btnRegisterClick(Sender: TObject);
var
  formatControl: string;
  debtType: string;
  debtStatus: boolean;
  debtValue: double;
  debt: iDebt;
begin
  if (chkDebtType.Checked) then
    debtType := GetEnumName(TypeInfo(TDebtEnum), integer(TDebtEnum.RECEBER))
  else
    debtType := GetEnumName(TypeInfo(TDebtEnum), integer(TDebtEnum.PAGAR));

  if (chkDebtStatus.Checked) then
    debtStatus := True
  else
    debtStatus := False;

  try
    formatControl := FormatFloat('0.##', StrToFloat(edtDebt.Text));
    debtValue := StrToFloat(formatControl);
  except
    ShowMessage('Digite um n?mero.');
    exit;
  end;

  debt := TDebt.New
    .description(edtDebtDesc.Text)
    .debtorName(edtDebtorName.Text)
    .debtorPhoneNumber(edtDebtorPhoneNumber.Text)
    .debtType(debtType)
    .debtStatus(debtStatus)
    .debt(debtValue);

  with DataModule1 do
  begin
    qr.ExecSQL('INSERT INTO debts' +
      '(debtDesc, debtorName, debtorPhoneNumber, debt, debtType, debtStatus)' +
      'VALUES (:desc, :debtorName, :debtorPhoneNumber, :debtValue, :debtType, :debtStatus)',
      [debt.description, debt.debtorName, debt.debtorPhoneNumber, debt.debt, debt.debtType, debt.debtStatus]);

    qr.Open('SELECT * FROM debts');

    edtDebtDesc.Text := EmptyStr;
    edtDebtorName.Text := EmptyStr;
    edtDebtorPhoneNumber.Text := EmptyStr;
    edtDebt.Text := EmptyStr;
    chkDebtType.Checked := False;
    chkDebtStatus.Checked := False;
  end;

end;

end.
