object FormAgendamentos: TFormAgendamentos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Agendamentos'
  ClientHeight = 442
  ClientWidth = 629
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label2: TLabel
    Left = 32
    Top = 123
    Width = 76
    Height = 15
    Caption = 'ID do Paciente'
  end
  object Label4: TLabel
    Left = 160
    Top = 123
    Width = 98
    Height = 15
    Caption = 'Nome do Paciente'
  end
  object Label3: TLabel
    Left = 32
    Top = 267
    Width = 24
    Height = 15
    Caption = 'Data'
  end
  object Label5: TLabel
    Left = 169
    Top = 267
    Width = 26
    Height = 15
    Caption = 'Hora'
  end
  object Label6: TLabel
    Left = 328
    Top = 195
    Width = 71
    Height = 15
    Caption = 'Especialidade'
  end
  object Label7: TLabel
    Left = 32
    Top = 195
    Width = 93
    Height = 15
    Caption = 'Nome do M'#233'dico'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 629
    Height = 81
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 625
    object Label1: TLabel
      Left = 32
      Top = 15
      Width = 195
      Height = 37
      Caption = 'Agendamentos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 297
      Top = 28
      Width = 310
      Height = 25
      DataSource = DM.DsAgendamento
      TabOrder = 0
    end
  end
  object txtId: TDBEdit
    Left = 32
    Top = 144
    Width = 89
    Height = 23
    DataField = 'id'
    DataSource = DM.DsAgendamento
    TabOrder = 1
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 160
    Top = 144
    Width = 313
    Height = 23
    DataField = 'id_paciente'
    DataSource = DM.DsAgendamento
    KeyField = 'id'
    ListField = 'nome'
    ListSource = DM.DsPaciente
    TabOrder = 2
  end
  object DBEdit1: TDBEdit
    Left = 32
    Top = 288
    Width = 89
    Height = 23
    DataField = 'data_exame'
    DataSource = DM.DsAgendamento
    MaxLength = 10
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 169
    Top = 288
    Width = 89
    Height = 23
    DataField = 'hora_exame'
    DataSource = DM.DsAgendamento
    MaxLength = 5
    TabOrder = 4
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 32
    Top = 216
    Width = 257
    Height = 23
    DataField = 'medico'
    DataSource = DM.DsAgendamento
    KeyField = 'nome'
    ListField = 'nome'
    ListSource = DM.DsMedico
    TabOrder = 5
  end
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 328
    Top = 216
    Width = 145
    Height = 23
    DataField = 'especialidade'
    DataSource = DM.DsAgendamento
    KeyField = 'especialidade'
    ListField = 'especialidade'
    ListSource = DM.DsMedico
    TabOrder = 6
  end
end
