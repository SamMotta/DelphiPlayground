object frmJurosSimples: TfrmJurosSimples
  Left = 0
  Top = 0
  Caption = 'Juros Simples'
  ClientHeight = 186
  ClientWidth = 206
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edtCapital: TLabeledEdit
    Left = 40
    Top = 24
    Width = 121
    Height = 21
    EditLabel.Width = 77
    EditLabel.Height = 13
    EditLabel.Caption = 'Valor do capital:'
    TabOrder = 0
  end
  object edtTaxa: TLabeledEdit
    Left = 40
    Top = 67
    Width = 121
    Height = 21
    EditLabel.Width = 68
    EditLabel.Height = 13
    EditLabel.Caption = 'Valor da taxa:'
    TabOrder = 1
  end
  object edtTempo: TLabeledEdit
    Left = 40
    Top = 107
    Width = 121
    Height = 21
    EditLabel.Width = 76
    EditLabel.Height = 13
    EditLabel.Caption = 'Valor da tempo:'
    TabOrder = 2
  end
  object btnCalcJuros: TButton
    Left = 56
    Top = 144
    Width = 81
    Height = 33
    Caption = 'Calcular Juros'
    TabOrder = 3
    WordWrap = True
    OnClick = btnCalcJurosClick
  end
end
