unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Serie1: TMenuItem;
    ejer311: TMenuItem;
    Edit1: TEdit;
    ListBox1: TListBox;
    Button1: TButton;
    ejer321: TMenuItem;
    procedure ejer311Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ejer321Click(Sender: TObject);
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

procedure TForm1.ejer311Click(Sender: TObject);
var n, c, s, sw : integer;
begin

  c := 1; s := 24;
  sw := 1;
  n := StrToInt(Edit1.Text);  //n = '45' => 45
  while c<=n do
  begin
     //s=24 => '24'
     ListBox1.Items.Add(IntToStr(s));
     if sw=1 then  //inicio de la estructura
     begin //verdader
      s := s div 2;  //5 / 2 => 2.5(real)
      sw := 0;
     end
     else
     begin  //falso
      s := s * 3;
      sw := 1;
     end; //fin de la estructura
     c := c + 1;
  end;

end;

procedure TForm1.ejer321Click(Sender: TObject);
begin
   //dasda
end;



function GetId(x : integer): integer;
begin
  result := x;
end;

procedure ModId(x: integer);
begin
  ShowMessage(IntToStr(x));
end;

end.
