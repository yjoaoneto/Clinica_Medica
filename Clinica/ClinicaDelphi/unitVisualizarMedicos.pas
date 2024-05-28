unit unitVisualizarMedicos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TFormMedicos = class(TForm)
    Label4: TLabel;
    Label7: TLabel;
    PanelCadMedico: TPanel;
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    txtNomeMedico: TDBEdit;
    txtBusca: TEdit;
    Label3: TLabel;
    BoxEspecialidade: TDBComboBox;
    gridMedico: TDBGrid;
    Label2: TLabel;
    txtIDMedico: TDBEdit;
    Label5: TLabel;
    BoxTurno: TDBComboBox;
    Label6: TLabel;
    txtTelefoneMedico: TDBEdit;
    Label8: TLabel;
    txtCRM: TDBEdit;
    Label9: TLabel;
    BoxSexo: TDBComboBox;
    procedure txtBuscaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMedicos: TFormMedicos;

implementation

{$R *.dfm}

uses DBCadastroPacientes;

procedure TFormMedicos.txtBuscaChange(Sender: TObject);
begin
     DM.TbMedico.Locate('nome',txtBusca.Text,[loPartialKey]);
     DM.TbMedico.Locate('especialidade',txtBusca.Text,[loPartialKey]);
end;

end.
