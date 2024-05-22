program SistemaClinica;

uses
  Vcl.Forms,
  unitPrincipalClinica in 'unitPrincipalClinica.pas' {Form1},
  unitCadastroPacientes in 'unitCadastroPacientes.pas' {formCadastroPacientes},
  unitAgendamentos in 'unitAgendamentos.pas' {FormAgendamentos},
  unitVisualizarMedicos in 'unitVisualizarMedicos.pas' {FormMedicos},
  DBCadastroPacientes in 'DBCadastroPacientes.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TformCadastroPacientes, formCadastroPacientes);
  Application.CreateForm(TFormAgendamentos, FormAgendamentos);
  Application.CreateForm(TFormMedicos, FormMedicos);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
