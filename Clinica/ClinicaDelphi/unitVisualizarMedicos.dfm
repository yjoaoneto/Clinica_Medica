object FormMedicos: TFormMedicos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'M'#233'dicos'
  ClientHeight = 486
  ClientWidth = 732
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
    Left = 383
    Top = 123
    Width = 139
    Height = 15
    Caption = 'Buscar M'#233'dico no Sistema'
  end
  object Label3: TLabel
    Left = 191
    Top = 251
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
  object Label5: TLabel
    Left = 24
    Top = 315
    Width = 31
    Height = 15
    Caption = 'Turno'
  end
  object Label6: TLabel
    Left = 191
    Top = 315
    Width = 106
    Height = 15
    Caption = 'Telefone de Contato'
  end
  object Label8: TLabel
    Left = 191
    Top = 123
    Width = 26
    Height = 15
    Caption = 'CRM'
  end
  object Label9: TLabel
    Left = 24
    Top = 251
    Width = 25
    Height = 15
    Caption = 'Sexo'
  end
  object PanelCadMedico: TPanel
    Left = 0
    Top = 0
    Width = 732
    Height = 81
    Align = alTop
    TabOrder = 5
    ExplicitWidth = 728
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
  object txtNomeMedico: TDBEdit
    Left = 24
    Top = 208
    Width = 304
    Height = 23
    DataField = 'nome'
    DataSource = DM.DsMedico
    TabOrder = 1
  end
  object txtBusca: TEdit
    Left = 383
    Top = 144
    Width = 320
    Height = 23
    TabOrder = 3
    OnChange = txtBuscaChange
  end
  object BoxEspecialidade: TDBComboBox
    Left = 191
    Top = 272
    Width = 137
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
    TabOrder = 2
  end
  object gridMedico: TDBGrid
    Left = 383
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
        Width = 131
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
        Width = 156
        Visible = True
      end>
  end
  object txtIDMedico: TDBEdit
    Left = 24
    Top = 144
    Width = 137
    Height = 23
    DataField = 'id'
    DataSource = DM.DsMedico
    TabOrder = 0
  end
  object BoxTurno: TDBComboBox
    Left = 24
    Top = 336
    Width = 137
    Height = 23
    DataField = 'turno'
    DataSource = DM.DsMedico
    Items.Strings = (
      'Manh'#227
      'Tarde'
      'Noite')
    TabOrder = 6
  end
  object txtTelefoneMedico: TDBEdit
    Left = 191
    Top = 336
    Width = 133
    Height = 23
    DataField = 'telefone_medico'
    DataSource = DM.DsMedico
    MaxLength = 15
    TabOrder = 7
  end
  object txtCRM: TDBEdit
    Left = 191
    Top = 144
    Width = 137
    Height = 23
    DataField = 'crm'
    DataSource = DM.DsMedico
    MaxLength = 4
    TabOrder = 8
  end
  object BoxSexo: TDBComboBox
    Left = 24
    Top = 272
    Width = 137
    Height = 23
    DataField = 'sexo'
    DataSource = DM.DsMedico
    Items.Strings = (
      'Masculino'
      'Feminino')
    TabOrder = 9
  end
end
