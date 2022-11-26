object frmAdmin: TfrmAdmin
  Left = 0
  Top = 0
  Caption = 'Administrador'
  ClientHeight = 294
  ClientWidth = 709
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    709
    294)
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 160
    Top = 8
    Width = 541
    Height = 278
    TabStop = False
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataModule1.dsDebts
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 2
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
  object btnDelete: TButton
    Left = 33
    Top = 52
    Width = 106
    Height = 35
    Caption = 'Excluir registro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnDeleteClick
  end
  object edtDebtId: TLabeledEdit
    Left = 24
    Top = 24
    Width = 121
    Height = 21
    EditLabel.Width = 83
    EditLabel.Height = 13
    EditLabel.Caption = 'C'#243'digo da d'#237'vida:'
    TabOrder = 0
  end
end
