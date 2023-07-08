program proyecto;

uses
  System.SysUtils,
  FechaUnit;

var f1, f2: Fecha;
begin
  try
    f1:=Fecha.Create;
    f2:=Fecha.Create;
//    f1.D�a:=31; f1.Mes:=2;  f1.A�o:=2020; // lanza excepcion
//    f1.D�a:=29; f1.Mes:=2;  f1.A�o:=2023; //revisar a�o esta mal, tiene que lanzar excepcion
    f1.D�a:=29; f1.Mes:=2;  f1.A�o:=2020;  //esta bien
    writeln(f1.ToStr);

    f2.D�a:=strtoint (copy (datetostr (now), 1, 1)) ;
    f2.Mes:=strtoint (copy (datetostr (now), 3, 1)) ;
    f2.A�o:=strtoint (copy (datetostr (now), 5, 4)) ;
    writeln(f2.ToStr);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  readln;
end.
