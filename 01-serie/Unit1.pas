unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    numero1: TMenuItem;
    ejercicio11: TMenuItem;
    ListBox1: TListBox;
    Button1: TButton;
    ejercicio21: TMenuItem;
    procedure ejercicio11Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 ListBox1.Clear;
end;

procedure TForm1.ejercicio11Click(Sender: TObject);
var
    n,t,i : integer;
begin
  n := StrToInt(edit1.text);
  t := 3;
  i := 1;
  while (i<=n) do
  begin //verdadero
    ListBox1.Items.Add(IntToStr(t));
    i := i + 1;
    t := t + 3;
  end;
end;

end.
