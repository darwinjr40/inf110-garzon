program Project1POO;

uses
  Vcl.Forms,
  Unit1Poo in 'Unit1Poo.pas' {Form1},
  Unit2POO in 'Unit2POO.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
