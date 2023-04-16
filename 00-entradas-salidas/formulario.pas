unit formulario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
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
var
    numero : integer;   //-1
    nroNatural : Cardinal; // n >= 0
    {
     este es un
     comentario
     multilinea
    }
begin
  {entradas}
  //numero := StrToInt(Edit1.Text);
  numero := StrToInt(InputBox('ingrese un numero','b','c'));

  {salidas}
  Edit2.Text := inttostr(numero);
  ShowMessage(inttostr(numero));
end;

end.
