program Project1;

uses
  Vcl.Forms,
  Formulario in 'Formulario.pas' {Form1},
  UCadenas in 'UCadenas.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
