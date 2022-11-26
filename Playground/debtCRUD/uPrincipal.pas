unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ButtonGroup, dm;

type
  TDebtEnum = (PAGAR, RECEBER);

  TfrmPrincipal = class(TForm)
    debtorGrid: TDBGrid;
    ButtonGroup: TButtonGroup;
    procedure ButtonGroupItems0Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButtonGroupItems1Click(Sender: TObject);
    procedure ButtonGroupItems2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  uCadastro, uPayment, uDeleteDebt;

{$R *.dfm}

procedure TfrmPrincipal.ButtonGroupItems0Click(Sender: TObject);
var
  form: TfrmCreateDebt;

begin
  try
    form := TfrmCreateDebt.Create(nil);
    form.ShowModal;
  finally
    FreeAndNil(form);
  end;
end;

procedure TfrmPrincipal.ButtonGroupItems1Click(Sender: TObject);
var
  form: TfrmPayment;
begin
  try
    form := TfrmPayment.Create(nil);
    form.ShowModal;
  finally
    FreeAndNil(form);
  end;
end;

procedure TfrmPrincipal.ButtonGroupItems2Click(Sender: TObject);
var
  form: TfrmAdmin;
begin
  try
    form := TfrmAdmin.Create(nil);
    form.ShowModal;
  finally
    FreeAndNil(form);
  end;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ReportMemoryLeaksOnShutdown := true;
end;

end.
