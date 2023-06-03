unit Formulario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus;

type
  TForm1 = class(TForm)
    Button1: TButton;
    MainMenu1: TMainMenu;
    Edit1: TEdit;
    Edit2: TEdit;
    cadenas1: TMenuItem;
    contarconstantesdelaprimerapalabra1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure contarconstantesdelaprimerapalabra1Click(Sender: TObject);
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



function CantConstPal(i: byte; cad:String): byte;
//const CON : set of char=['B','C','D','F','G','H','J','K','L','M','P','Q','R','S','T','V','W','X','Y','Z','N'];
const con : set of char=['b','c','d','f','g','h','j','k','l','m','p','q','r','s','t','v','w','x','y','z','n'];
var s : byte;
begin
  s := 0;
  while (i<=n)and( not (cad[i] in CON)) do
  begin
   i := i + 1;
  end;
  while (i<=n)and( cad[i] <> ' ') do
  begin
   if cad[i] in CON then
     s := s + 1;
   i := i + 1;
  end;
  result := s;
end;


procedure TForm1.contarconstantesdelaprimerapalabra1Click(Sender: TObject);
begin
 edit2.Text := IntToStr(CantConstPal(1, cad));
end;

end.
