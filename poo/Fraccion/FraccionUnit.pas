unit FraccionUnit;

interface
  uses SysUtils;

  type
    Fraccion=class
      private
        n,d:byte;
      public
        {constructores}
        constructor Create;
        {procedimientos}
        procedure SetDenominador (dd: byte) ;
        procedure Simplificar;
        {funciones}
        function Calcular:real;
        function ToStr:string;
        {propiedades}
        property Numerador:byte read n write n;
        property Denominador:byte read d write SetDenominador;
        {metodos staticos, pertenecen a la clase}
        class function MCD(a, b: byte): byte; static;

    end;
implementation

{ Fraccion }

function Fraccion.Calcular: real;
begin
  Calcular := (n / d);
end;

constructor Fraccion.Create;
begin
  n:=1; d:=1;
end;



class function Fraccion.MCD(a, b: byte): byte;
var temp: byte;
begin
  while b <> 0 do
  begin
    temp := b;
    b := a mod b;
    a := temp;
  end;
  Result := a;
end;

procedure Fraccion.SetDenominador(dd: byte);
begin
  if dd =0 then
    raise Exception.Create('Error: dato no válido');

  d:=dd;
end;

procedure Fraccion.Simplificar;
var mcd : byte;
begin
  mcd := Fraccion.MCD(self.n, self.d);
  self.n := n div mcd;
  self.d := d div mcd;
end;

function Fraccion.ToStr: string;
begin
  ToStr := IntToStr(n) + '/'+ IntToStr(d);
end;

end.
