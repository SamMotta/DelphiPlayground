object frmCreateDebt: TfrmCreateDebt
  Left = 0
  Top = 0
  ActiveControl = edtDebtDesc
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de d'#237'vida'
  ClientHeight = 166
  ClientWidth = 322
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 175
    Top = 8
    Width = 74
    Height = 13
    Caption = 'Valor da d'#237'vida:'
  end
  object Label2: TLabel
    Left = 23
    Top = 8
    Width = 106
    Height = 13
    Caption = 'N'#250'mero para contato:'
  end
  object Label3: TLabel
    Left = 175
    Top = 56
    Width = 89
    Height = 13
    Caption = 'Nome do devedor:'
  end
  object Label4: TLabel
    Left = 23
    Top = 56
    Width = 96
    Height = 13
    Caption = 'Descri'#231#227'o da d'#237'vida:'
  end
  object edtDebtDesc: TEdit
    Left = 23
    Top = 74
    Width = 121
    Height = 21
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 2
  end
  object edtDebtorName: TEdit
    Left = 175
    Top = 74
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edtDebtorPhoneNumber: TEdit
    Left = 23
    Top = 27
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtDebt: TEdit
    Left = 175
    Top = 27
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnRegister: TButton
    Left = 175
    Top = 111
    Width = 92
    Height = 35
    Caption = 'Cadastrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = btnRegisterClick
  end
  object chkDebtType: TCheckBox
    Left = 23
    Top = 108
    Width = 126
    Height = 17
    Caption = 'Conta a ser recebida?'
    TabOrder = 4
  end
  object chkDebtStatus: TCheckBox
    Left = 23
    Top = 131
    Width = 121
    Height = 17
    Caption = 'Conta j'#225' foi paga?'
    TabOrder = 5
    Visible = False
  end
end
