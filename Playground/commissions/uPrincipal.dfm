object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Comiss'#227'o'
  ClientHeight = 219
  ClientWidth = 362
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object labelMemResultado: TLabel
    Left = 184
    Top = 8
    Width = 52
    Height = 13
    Caption = 'Resultado:'
  end
  object ledtVendedor: TLabeledEdit
    Left = 16
    Top = 24
    Width = 145
    Height = 21
    EditLabel.Width = 133
    EditLabel.Height = 13
    EditLabel.Caption = 'Digite o nome do vendedor:'
    TabOrder = 0
    TextHint = 'Nome do vendedor'
  end
  object btnCalc: TButton
    Left = 16
    Top = 165
    Width = 121
    Height = 46
    Caption = 'Calcular comiss'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btnCalcClick
  end
  object memResultado: TMemo
    Left = 184
    Top = 24
    Width = 161
    Height = 89
    TabStop = False
    ReadOnly = True
    TabOrder = 4
  end
  object ledtSalarioFixo: TLabeledEdit
    Left = 16
    Top = 72
    Width = 145
    Height = 21
    EditLabel.Width = 138
    EditLabel.Height = 13
    EditLabel.Caption = 'Digite o sal'#225'rio do vendedor:'
    TabOrder = 1
    TextHint = 'Sal'#225'rio fixo do vendedor'
  end
  object ledtTotalVendas: TLabeledEdit
    Left = 16
    Top = 119
    Width = 145
    Height = 21
    EditLabel.Width = 118
    EditLabel.Height = 13
    EditLabel.Caption = 'Digite o total de vendas:'
    TabOrder = 2
    TextHint = 'Total de vendas'
  end
end
