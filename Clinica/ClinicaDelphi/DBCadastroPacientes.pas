unit DBCadastroPacientes;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDM = class(TDataModule)
    TbPaciente: TFDTable;
    TbMedico: TFDTable;
    DsPaciente: TDataSource;
    DsAgendamento: TDataSource;
    DsMedico: TDataSource;
    ConexaoBD: TFDConnection;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    TbPacienteid: TIntegerField;
    TbPacientenome: TStringField;
    TbPacientecpf: TStringField;
    TbPacientecelular: TStringField;
    TbPacientedata_cadastro: TDateField;
    TbPacienteendereco: TStringField;
    TbPacientebairro: TStringField;
    TbPacientecep: TStringField;
    TbMedicoid: TIntegerField;
    TbMediconome: TStringField;
    TbMedicoespecialidade: TStringField;
    TbMedicoturno: TStringField;
    TbMedicocrm: TIntegerField;
    TbMedicotelefone_medico: TStringField;
    sqlConsulta: TFDQuery;
    DsConsulta: TDataSource;
    TbAgendamento: TFDTable;
    TbAgendamentoid: TIntegerField;
    TbAgendamentoid_paciente: TIntegerField;
    TbAgendamentomedico: TStringField;
    TbAgendamentodata_exame: TDateField;
    TbAgendamentohora_exame: TStringField;
    TbAgendamentoespecialidade: TStringField;
    TbAgendamentoconvenio: TStringField;
    procedure TbPacienteAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.TbPacienteAfterInsert(DataSet: TDataSet);
begin
    TbPacientedata_cadastro.Value := Date();
end;

end.
