unit Formulario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, ucadenas;

type
  TForm1 = class(TForm)
    Button1: TButton;
    MainMenu1: TMainMenu;
    Edit1: TEdit;
    Edit2: TEdit;
    cadenas1: TMenuItem;
    contarconstantesdelaprimerapalabra1: TMenuItem;
    contarpalabras1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure contarconstantesdelaprimerapalabra1Click(Sender: TObject);
    procedure contarpalabras1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  //variables globales
  cad : String;
  n : byte;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  cad := Edit1.Text;
  n := Length(cad);
  ShowMessage(inttostr(n)+' caracteres');
end;

procedure TForm1.contarconstantesdelaprimerapalabra1Click(Sender: TObject);
begin
 edit2.Text := IntToStr(CantConstPal(cad, n));
end;

procedure TForm1.contarpalabras1Click(Sender: TObject);
begin
 Edit2.Text := IntToStr(GetCantPal(cad, n));
end;



end.
