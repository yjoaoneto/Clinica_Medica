object FormMedicos: TFormMedicos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'M'#233'dicos'
  ClientHeight = 442
  ClientWidth = 675
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label4: TLabel
    Left = 24
    Top = 187
    Width = 89
    Height = 15
    Caption = 'Nome Completo'
  end
  object Label7: TLabel
    Left = 327
    Top = 123
    Width = 139
    Height = 15
    Caption = 'Buscar M'#233'dico no Sistema'
  end
  object Label3: TLabel
    Left = 24
    Top = 259
    Width = 71
    Height = 15
    Caption = 'Especialidade'
  end
  object Label2: TLabel
    Left = 24
    Top = 123
    Width = 71
    Height = 15
    Caption = 'ID do M'#233'dico'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 675
    Height = 81
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 671
    object Label1: TLabel
      Left = 24
      Top = 15
      Width = 269
      Height = 37
      Caption = 'Cadastro de M'#233'dicos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 361
      Top = 28
      Width = 310
      Height = 25
      DataSource = DM.DsMedico
      TabOrder = 0
    end
  end
  object txtNome: TDBEdit
    Left = 24
    Top = 208
    Width = 269
    Height = 23
    DataField = 'nome'
    DataSource = DM.DsMedico
    TabOrder = 1
  end
  object txtBusca: TEdit
    Left = 327
    Top = 144
    Width = 312
    Height = 23
    TabOrder = 2
    OnChange = txtBuscaChange
  end
  object DBComboBox1: TDBComboBox
    Left = 24
    Top = 280
    Width = 145
    Height = 23
    DataField = 'especialidade'
    DataSource = DM.DsMedico
    Items.Strings = (
      'Cardiologista'
      'Neurologista'
      'Nutricionista'
      'Ortopedista'
      'Psic'#243'logo'
      'Terapeuta Qu'#226'ntico'
      'Urologista')
    TabOrder = 3
  end
  object gridMedico: TDBGrid
    Left = 327
    Top = 173
    Width = 320
    Height = 235
    Color = clBtnFace
    DataSource = DM.DsMedico
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'M'#233'dico(a)'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'especialidade'
        Title.Caption = 'Especialidade'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 144
    Width = 71
    Height = 23
    DataField = 'id'
    DataSource = DM.DsMedico
    TabOrder = 5
  end
end
