object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Inverter'
  ClientHeight = 107
  ClientWidth = 200
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ledtFirstValue: TLabeledEdit
    Left = 24
    Top = 32
    Width = 57
    Height = 21
    EditLabel.Width = 53
    EditLabel.Height = 13
    EditLabel.Caption = 'Primeiro N'#186
    TabOrder = 0
  end
  object ledtSecondValue: TLabeledEdit
    Left = 111
    Top = 32
    Width = 57
    Height = 21
    EditLabel.Width = 57
    EditLabel.Height = 13
    EditLabel.Caption = 'Segundo N'#186
    TabOrder = 1
  end
  object btnInverter: TButton
    Left = 56
    Top = 63
    Width = 81
    Height = 25
    Caption = 'Inverter'
    TabOrder = 2
    OnClick = btnInverterClick
  end
end
