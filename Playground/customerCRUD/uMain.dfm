object frmCustomerRegistration: TfrmCustomerRegistration
  Left = 0
  Top = 0
  ActiveControl = btngForms
  Caption = 'Cadastro de Clientes'
  ClientHeight = 341
  ClientWidth = 810
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  DesignSize = (
    810
    341)
  PixelsPerInch = 96
  TextHeight = 13
  object btngForms: TButtonGroup
    Left = 8
    Top = 8
    Width = 153
    Height = 121
    ButtonHeight = 29
    ButtonWidth = 150
    Items = <
      item
        Caption = 'Cadastrar cliente'
        OnClick = btngFormsItems0Click
      end
      item
        Caption = 'Buscar cliente'
        OnClick = btngFormsItems1Click
      end
      item
        Caption = 'Atualizar cadastro'
        OnClick = btngFormsItems2Click
      end
      item
        Caption = 'Apagar cadastro'
        OnClick = btngFormsItems3Click
      end>
    TabOrder = 0
  end
  object customersGrid: TDBGrid
    Left = 178
    Top = 8
    Width = 629
    Height = 330
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dtmConnection.dsClientes
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cpfCnpj'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'endereco'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'divida'
        Visible = True
      end>
  end
end
