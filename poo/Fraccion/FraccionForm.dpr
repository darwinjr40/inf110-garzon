program FraccionForm;

uses
  System.SysUtils, FraccionUnit;

var fa : Fraccion;

begin

  try
    fa := Fraccion.Create;
    fa.Numerador := 10;
  //  fa.Denominador := 0;
    fa.Denominador := 8;
    fa.Simplificar;
    writeln(fa.ToStr);
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  readln;

end.
