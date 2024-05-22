unit unitCadastroPacientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls;

type
  TformCadastroPacientes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    txtCpf: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    gridPaciente: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label7: TLabel;
    txtBusca: TEdit;
    txtId: TDBEdit;
    txtNome: TDBEdit;
    txtCelular: TDBEdit;
    txtDataCadastro: TDBEdit;
    procedure txtBuscaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCadastroPacientes: TformCadastroPacientes;

implementation

{$R *.dfm}

uses DBCadastroPacientes;

procedure TformCadastroPacientes.txtBuscaChange(Sender: TObject);
begin
          DM.TbPaciente.Locate('nome',txtBusca.Text,[loPartialKey]);
end;

end.
