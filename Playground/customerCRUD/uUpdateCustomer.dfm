object frmUpdateCustomer: TfrmUpdateCustomer
  Left = 0
  Top = 0
  Caption = 'Formul'#225'rio: Atualizar cadastro de cliente'
  ClientHeight = 281
  ClientWidth = 404
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
  object ledtNome: TLabeledEdit
    Left = 50
    Top = 29
    Width = 193
    Height = 21
    EditLabel.Width = 195
    EditLabel.Height = 13
    EditLabel.Caption = 'Digite o nome da pessoa ou da empresa:'
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 2
    TextHint = 'Nome da pessoa ou da empresa'
  end
  object ledtEndereco: TLabeledEdit
    Left = 50
    Top = 130
    Width = 193
    Height = 21
    EditLabel.Width = 88
    EditLabel.Height = 13
    EditLabel.Caption = 'Digite o endere'#231'o:'
    ReadOnly = True
    TabOrder = 4
    TextHint = 'Endere'#231'o do devedor. EX: Rua, n'#250'mero...'
  end
  object ledtCpfCnpj: TLabeledEdit
    Left = 50
    Top = 79
    Width = 193
    Height = 21
    EditLabel.Width = 105
    EditLabel.Height = 13
    EditLabel.Caption = 'Digite o CPF ou CNPJ:'
    ReadOnly = True
    TabOrder = 3
    TextHint = 'CPF ou CNPJ do devedor'
  end
  object ledtDivida: TLabeledEdit
    Left = 50
    Top = 183
    Width = 193
    Height = 21
    EditLabel.Width = 138
    EditLabel.Height = 13
    EditLabel.Caption = 'Digite quanto o cliente deve:'
    NumbersOnly = True
    ReadOnly = True
    TabOrder = 5
    TextHint = 'Quantos reais o cliente deve'
  end
  object btnSubmit: TButton
    Left = 88
    Top = 223
    Width = 113
    Height = 39
    Caption = 'Cadastrar Cliente'
    TabOrder = 6
    OnClick = btnSubmitClick
  end
  object btnSubmitSearch: TButton
    Left = 267
    Top = 60
    Width = 113
    Height = 30
    Caption = 'Buscar Cliente'
    TabOrder = 1
    OnClick = btnSubmitSearchClick
  end
  object ledtClientID: TLabeledEdit
    Left = 267
    Top = 29
    Width = 121
    Height = 21
    EditLabel.Width = 103
    EditLabel.Height = 13
    EditLabel.Caption = 'Digite o ID do cliente:'
    TabOrder = 0
  end
end
