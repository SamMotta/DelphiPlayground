object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Formul'#225'rio Principal'
  ClientHeight = 161
  ClientWidth = 265
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object btnOpenJS: TButton
    Left = 21
    Top = 112
    Width = 113
    Height = 41
    Caption = 'Abrir Formul'#225'rio de Juros Simples'
    TabOrder = 0
    WordWrap = True
    OnClick = btnOpenJSClick
  end
  object edtResultado: TLabeledEdit
    Left = 21
    Top = 24
    Width = 121
    Height = 21
    EditLabel.Width = 48
    EditLabel.Height = 13
    EditLabel.Caption = 'Resultado'
    TabOrder = 1
  end
  object btnOpenJC: TButton
    Left = 21
    Top = 65
    Width = 113
    Height = 41
    Caption = 'Abrir Formul'#225'rio de Juros Compostos'
    TabOrder = 2
    WordWrap = True
    OnClick = btnOpenJCClick
  end
end
