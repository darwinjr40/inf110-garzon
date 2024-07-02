unit Unit1Poo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Unit2POO, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Menus;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Crear: TLabel;
    CambiarValor: TLabel;
    mostrar: TButton;
    BitBtn1: TBitBtn;
    MainMenu1: TMainMenu;
    NaturalPOO1: TMenuItem;
    NaturalPOO2: TMenuItem;
    SumarDigitos1: TMenuItem;
    SumarDigitos2: TMenuItem;
    Invertir1: TMenuItem;
    Invertir2: TMenuItem;
    prueba1: TMenuItem;
    procedure CrearClick(Sender: TObject);
    procedure CambiarValorClick(Sender: TObject);
    procedure mostrarClick(Sender: TObject);
    procedure NaturalPOO2Click(Sender: TObject);
    procedure prueba1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Numero: NumeroNatural;

implementation

{$R *.dfm}


procedure TForm1.CrearClick(Sender: TObject);
begin
  Numero:=NumeroNatural.create;
  showmessage('Numero creado en la clase');
end;

procedure TForm1.mostrarClick(Sender: TObject);
begin
  edit2.Text:=IntToStr(Numero.ObtenerValor);
end;

procedure TForm1.NaturalPOO2Click(Sender: TObject);
begin
  edit2.Text:= IntToStr(Numero.ContarDigito)+' digitos.';
end;

procedure TForm1.prueba1Click(Sender: TObject);
var d, salida : cardinal;
begin
//  d := StrToInt(InputBox('','',''));
  salida := numero.GetUniqueDigs();
  edit2.Text := inttostr(salida);
end;

procedure TForm1.CambiarValorClick(Sender: TObject);
begin
   Numero.CambiarValor(StrToInt(edit1.Text));
   showmessage('Valor asignado');
end;
end.
