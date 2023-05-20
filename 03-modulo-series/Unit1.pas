unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Serie1: TMenuItem;
    Preguntaexamen11: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Preguntaexamen11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  n : integer;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  N:=strtoint(edit1.Text);
  showmessage('Numero Registrado');
end;

function Pregunta1Exa(n : integer): Real;
var c, a, b, r, i, base, ex :integer;
    s: real;
begin
  c := 1;  a:=1;
  b := 1; s:= 0;
  while (n >= c) do
  begin
    r:=1;  i:=1;
    base:=a; ex:=a;
    while (i<=ex) do
    begin
      r:= r*base;
      i:= i + 1;
    end;
    s:= s + (r/(b*b));
    a:= a + 2;
    b:= b + 1;
    c:= c + 1;
  end;
  result:= s;
end;

procedure TForm1.Preguntaexamen11Click(Sender: TObject);
begin
 edit2.Text:= FloatToStr(Pregunta1Exa(n));
end;

end.
