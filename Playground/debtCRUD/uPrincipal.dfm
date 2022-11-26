object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Home'
  ClientHeight = 343
  ClientWidth = 707
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  DesignSize = (
    707
    343)
  PixelsPerInch = 96
  TextHeight = 13
  object debtorGrid: TDBGrid
    Left = 168
    Top = 8
    Width = 531
    Height = 327
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataModule1.dsDebts
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'ID'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'debtDesc'
        Title.Caption = 'Descri'#231#227'o'
        Width = 256
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'debtorName'
        Title.Caption = 'Devedor'
        Width = 228
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'debtorPhoneNumber'
        Title.Caption = 'Contato'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'debt'
        Title.Caption = 'D'#233'bito'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'debtType'
        Title.Caption = 'Tipo'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'debtStatus'
        Title.Caption = 'Status'
        Width = 60
        Visible = True
      end>
  end
  object ButtonGroup: TButtonGroup
    Left = 8
    Top = 8
    Width = 140
    Height = 76
    ButtonWidth = 130
    ButtonOptions = [gboFullSize, gboShowCaptions]
    Items = <
      item
        Caption = 'Cadastrar contas'
        OnClick = ButtonGroupItems0Click
      end
      item
        Caption = 'Realizar pagamento'
        OnClick = ButtonGroupItems1Click
      end
      item
        Caption = 'Apagar contas'
        OnClick = ButtonGroupItems2Click
      end>
    TabOrder = 1
  end
end
