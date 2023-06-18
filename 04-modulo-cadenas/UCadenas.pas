unit UCadenas;



interface
   const CON : set of char=['a'..'z', 'A'..'Z', '0'..'9'];
   {definiciones de metodos}
   function CantConstPal(i: byte; cad:String; n :integer): byte;
   function GetCantPal(x: String; n: integer): byte;

implementation
{implementaciones de metodos}

function CantConstPal(i: byte; cad:String; n :integer): byte;
//const CON : set of char=['B','C','D','F','G','H','J','K','L','M','P','Q','R','S','T','V','W','X','Y','Z','N'];
const con : set of char=['b','c','d','f','g','h','j','k','l','m','p','q','r','s','t','v','w','x','y','z','n'];
var s : byte;
begin
  s := 0;
  while (i<=n)and( not (cad[i] in CON)) do
  begin
   i := i + 1;
  end;
  while (i<=n)and( cad[i] <> ' ') do
  begin
   if cad[i] in CON then
     s := s + 1;
   i := i + 1;
  end;
  result := s;
end;

//-------------------------------
function GetCantPal(x: String; n: integer): byte;
var c: integer;
    cant: byte;
begin
  c := 1;
  cant := 0;
  while c<=n do begin
   if ((x[c]in CON)AND(c>=2)AND (NOT(x[c-1]in CON)))or
       ((x[c]in CON)and (c=1)) then
       cant := cant+1;

   c := c+1;
  end;
  result := cant;
end;


end.
