program proyecto;

uses
  System.SysUtils,
  FechaUnit;

var f1, f2: Fecha;
begin
  try
    f1:=Fecha.Create;
    f2:=Fecha.Create;
//    f1.Día:=31; f1.Mes:=2;  f1.Año:=2020; // lanza excepcion
//    f1.Día:=29; f1.Mes:=2;  f1.Año:=2023; //revisar año esta mal, tiene que lanzar excepcion
    f1.Día:=29; f1.Mes:=2;  f1.Año:=2020;  //esta bien
    writeln(f1.ToStr);

    f2.Día:=strtoint (copy (datetostr (now), 1, 1)) ;
    f2.Mes:=strtoint (copy (datetostr (now), 3, 1)) ;
    f2.Año:=strtoint (copy (datetostr (now), 5, 4)) ;
    writeln(f2.ToStr);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  readln;
end.
