object formCadastroPacientes: TformCadastroPacientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Pacientes '
  ClientHeight = 570
  ClientWidth = 684
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label2: TLabel
    Left = 24
    Top = 123
    Width = 11
    Height = 15
    Caption = 'ID'
  end
  object Label3: TLabel
    Left = 212
    Top = 123
    Width = 21
    Height = 15
    Caption = 'CPF'
  end
  object Label4: TLabel
    Left = 24
    Top = 198
    Width = 89
    Height = 15
    Caption = 'Nome Completo'
  end
  object Label5: TLabel
    Left = 24
    Top = 267
    Width = 37
    Height = 15
    Caption = 'Celular'
  end
  object Label6: TLabel
    Left = 208
    Top = 267
    Width = 90
    Height = 15
    Caption = 'Data de Cadastro'
  end
  object Label7: TLabel
    Left = 351
    Top = 123
    Width = 83
    Height = 15
    Caption = 'Buscar Paciente'
  end
  object Label8: TLabel
    Left = 356
    Top = 198
    Width = 143
    Height = 15
    Caption = 'PACIENTES CADASTRADOS'
  end
  object Label9: TLabel
    Left = 24
    Top = 331
    Width = 49
    Height = 15
    Caption = 'Endere'#231'o'
  end
  object Label10: TLabel
    Left = 24
    Top = 395
    Width = 31
    Height = 15
    Caption = 'Bairro'
  end
  object Label11: TLabel
    Left = 208
    Top = 395
    Width = 21
    Height = 15
    Caption = 'CEP'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 684
    Height = 81
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 680
    object Label1: TLabel
      Left = 24
      Top = 15
      Width = 282
      Height = 37
      Caption = 'Cadastro de Pacientes'
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
      DataSource = DM.DsPaciente
      TabOrder = 0
    end
  end
  object txtCpf: TDBEdit
    Left = 212
    Top = 144
    Width = 103
    Height = 23
    DataField = 'cpf'
    DataSource = DM.DsPaciente
    MaxLength = 14
    TabOrder = 2
  end
  object txtNomePaciente: TDBEdit
    Left = 24
    Top = 219
    Width = 305
    Height = 23
    DataField = 'nome'
    DataSource = DM.DsPaciente
    TabOrder = 3
  end
  object txtCelular: TDBEdit
    Left = 24
    Top = 288
    Width = 121
    Height = 23
    DataField = 'celular'
    DataSource = DM.DsPaciente
    MaxLength = 15
    TabOrder = 4
  end
  object txtIDPaciente: TDBEdit
    Left = 24
    Top = 144
    Width = 121
    Height = 23
    DataField = 'id'
    DataSource = DM.DsPaciente
    TabOrder = 1
  end
  object txtDataCadastro: TDBEdit
    Left = 208
    Top = 288
    Width = 121
    Height = 23
    DataField = 'data_cadastro'
    DataSource = DM.DsPaciente
    ReadOnly = True
    TabOrder = 5
  end
  object gridPaciente: TDBGrid
    Left = 356
    Top = 219
    Width = 320
    Height = 315
    DataSource = DM.DsPaciente
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'ID'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'NOME'
        Visible = True
      end>
  end
  object txtBusca: TEdit
    Left = 351
    Top = 144
    Width = 320
    Height = 23
    TabOrder = 6
    OnChange = txtBuscaChange
  end
  object txtEndereco: TDBEdit
    Left = 24
    Top = 352
    Width = 305
    Height = 23
    DataField = 'endereco'
    DataSource = DM.DsPaciente
    TabOrder = 8
  end
  object txtBairro: TDBEdit
    Left = 24
    Top = 416
    Width = 121
    Height = 23
    DataField = 'bairro'
    DataSource = DM.DsPaciente
    TabOrder = 9
  end
  object txtCep: TDBEdit
    Left = 208
    Top = 416
    Width = 119
    Height = 23
    DataField = 'cep'
    DataSource = DM.DsPaciente
    MaxLength = 9
    TabOrder = 10
  end
end
