object DM: TDM
  Height = 714
  Width = 774
  object TbPaciente: TFDTable
    Active = True
    AfterInsert = TbPacienteAfterInsert
    IndexFieldNames = 'id'
    Connection = ConexaoBD
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'paciente'
    Left = 192
    Top = 264
    object TbPacienteid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      Required = True
    end
    object TbPacientenome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 100
    end
    object TbPacientecpf: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
      EditMask = '###.###.###-##;1;'
      Size = 15
    end
    object TbPacientecelular: TStringField
      FieldName = 'celular'
      Origin = 'celular'
      Required = True
      EditMask = '(##) #.####-####;1;_'
      Size = 16
    end
    object TbPacientedata_cadastro: TDateField
      FieldName = 'data_cadastro'
      Origin = 'data_cadastro'
      Required = True
      EditMask = '##/##/####;1;_'
    end
  end
  object TbMedico: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = ConexaoBD
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'medico'
    Left = 408
    Top = 264
    object TbMedicoid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TbMediconome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 100
    end
    object TbMedicoespecialidade: TStringField
      FieldName = 'especialidade'
      Origin = 'especialidade'
      Required = True
      Size = 25
    end
  end
  object DsPaciente: TDataSource
    DataSet = TbPaciente
    Left = 192
    Top = 384
  end
  object DsAgendamento: TDataSource
    DataSet = TbAgendamento
    Left = 304
    Top = 384
  end
  object DsMedico: TDataSource
    DataSet = TbMedico
    Left = 408
    Top = 384
  end
  object ConexaoBD: TFDConnection
    Params.Strings = (
      'Server=127.0.0.1'
      'Database=clinica'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 304
    Top = 128
  end
  object TbAgendamento: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = ConexaoBD
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'agendamento'
    Left = 296
    Top = 264
    object TbAgendamentoid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TbAgendamentoid_paciente: TIntegerField
      FieldName = 'id_paciente'
      Origin = 'id_paciente'
      Required = True
    end
    object TbAgendamentomedico: TStringField
      FieldName = 'medico'
      Origin = 'medico'
      Required = True
      Size = 100
    end
    object TbAgendamentodata_exame: TDateField
      FieldName = 'data_exame'
      Origin = 'data_exame'
      Required = True
      EditMask = '##/##/####;1;_'
    end
    object TbAgendamentohora_exame: TStringField
      FieldName = 'hora_exame'
      Origin = 'hora_exame'
      Required = True
      EditMask = '##:##;1;_'
      Size = 5
    end
    object TbAgendamentoespecialidade: TStringField
      FieldName = 'especialidade'
      Origin = 'especialidade'
      Required = True
      Size = 25
    end
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\joaon\Downloads\ProjetoAPSClinica\SistemaClinica\Clinic' +
      'aDelphi\libmysql.dll'
    Left = 136
    Top = 88
  end
end