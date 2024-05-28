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
    Panel1: TPanel;
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    txtNome: TDBEdit;
    txtBusca: TEdit;
    Label3: TLabel;
    DBComboBox1: TDBComboBox;
    gridMedico: TDBGrid;
    Label2: TLabel;
    DBEdit1: TDBEdit;
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
