object frmMedia: TfrmMedia
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Calculadora de M'#233'dias'
  ClientHeight = 187
  ClientWidth = 227
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
  object memoResult: TMemo
    Left = 8
    Top = 101
    Width = 211
    Height = 78
    TabStop = False
    TabOrder = 2
  end
  object ledtIn: TLabeledEdit
    Left = 8
    Top = 74
    Width = 211
    Height = 21
    EditLabel.Width = 107
    EditLabel.Height = 13
    EditLabel.Caption = 'Digite v'#225'rios n'#250'meros:'
    TabOrder = 0
  end
  object btnCalc: TButton
    Left = 8
    Top = 8
    Width = 87
    Height = 35
    Caption = 'Calcular'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnCalcClick
  end
end
