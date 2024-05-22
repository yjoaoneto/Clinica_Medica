unit unitPrincipalClinica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Menus, Vcl.Imaging.jpeg;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Sair1: TMenuItem;
    Sair2: TMenuItem;
    Pacientes1: TMenuItem;
    Pacientes2: TMenuItem;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Image1: TImage;
    Mdicos1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Pacientes1Click(Sender: TObject);
    procedure Pacientes2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Mdicos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses unitCadastroPacientes, unitAgendamentos, unitVisualizarMedicos;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
    FormMedicos.ShowModal;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
    formCadastroPacientes.ShowModal;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
    FormAgendamentos.ShowModal;
end;

procedure TForm1.Mdicos1Click(Sender: TObject);
begin
    FormMedicos.ShowModal;
end;

procedure TForm1.Pacientes1Click(Sender: TObject);
begin
    formCadastroPacientes.ShowModal;
end;

procedure TForm1.Pacientes2Click(Sender: TObject);
begin
     FormAgendamentos.ShowModal;
end;

procedure TForm1.Sair1Click(Sender: TObject);
begin
   Application.Terminate;
end;

end.
