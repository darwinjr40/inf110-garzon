unit Unit2POO;

interface

uses SysUtils;

type
  NumeroNatural=class
  private
    { Private declarations }
    Valor:Cardinal; //var global
  public
    { Public declarations }
    Constructor create;
    Procedure CambiarValor(V:cardinal);
    function ObtenerValor: cardinal;
    function ContarDigito:byte; //No debe ser igual a una funcion o proceso ya creado
    function GetFrec(d : byte): byte;
    function GetUniqueDigs(): cardinal;
end;

implementation
  Constructor NumeroNatural.create;
  begin
    Valor:=0;
  end;

function NumeroNatural.GetFrec(d: byte): byte;
var n : cardinal;
    cant : byte;
begin
  n := self.Valor; // valor
  cant := 0;
  while n > 0 do
  begin
    if (n mod 10) = d then
    begin
      cant := cant+1;
    end;
    n := n div 10;
  end;
  result := cant;
end;

function NumeroNatural.GetUniqueDigs: cardinal;
var n, d, r, p : cardinal;
begin
  n := valor;
  r := 0;
  p := 1;
  while n >0 do
  begin
    d := n mod 10;
    n := n div 10;
    if(self.GetFrec(d) = 1) then
    begin
      r := d*p+r;
      p := p*10;
    end;
  end;
  result := r;
end;

procedure NumeroNatural.CambiarValor(V:cardinal);
  begin
    Valor:=V;
  end;

function NumeroNatural.ObtenerValor: cardinal;
  begin
    ObtenerValor:=Valor; //result;
  end;

function NumeroNatural.ContarDigito: Byte;
  var n: word;
      c: byte;
  begin
    c:=0;
    n:=Valor;
    repeat
      n:=n div 10;
      inc(c);
    until n=0;
    result:=c;
  end;
end.
