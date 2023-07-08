unit FechaUnit;

interface

  uses SysUtils;

  type
    Fecha=class
        private
            d, m:byte;
            a:word;
            procedure SetDia (dd:byte);
            procedure SetMes (mm: byte);
            procedure SetA�o (aa:word);
        public
            Constructor Create;
            function ToStr:string;
            function EsBisiesto:boolean;
            property D�a:byte read d write SetDia;
            property Mes:byte read m write SetMes;
            property A�o:word read a write SetA�o;
    end;

implementation

{ Fecha }

constructor Fecha.Create;
begin
  d:= 1; m:= 1; a:= 2000;
end;

function Fecha.EsBisiesto: boolean;
begin
  EsBisiesto:= (a mod 4) = 0;
end;

procedure Fecha.SetA�o(aa: word);
begin
  a:= aa;
end;

procedure Fecha.SetDia(dd: byte);
begin
  if not ((dd>=1) and (dd<=31)) then
    raise Exception.Create ('Error:d�a no v�lido');

  if dd=31 then begin
    if m in [1,3,5,7,8,10,12] then begin
      d:=dd;
    end else begin
      raise Exception.Create ('Error:d�a no v�lido');
    end;
  end else if dd=30 then begin
    if m=2 then begin
      raise Exception.Create ('Error:d�a no v�lido');
    end else begin
      d:=dd;
    end;
  end else if dd=29 then begin
    if m=2 then begin
      if EsBisiesto then begin
        d:=dd;
      end else begin
        raise Exception.Create ('Error:d�a no v�lido');
      end;
    end else begin
      d:=dd;
    end;
  end else begin
      d:=dd;
  end;
end;

procedure Fecha.SetMes(mm: byte);
begin
  if not ((mm>=1) and (mm<=12)) then
    raise Exception.Create ('Error:mes no v�lido');

  if d=31 then begin
    if mm in [1,3,5,7,8,10,12] then begin
     m:=mm;
    end else begin
      raise Exception.Create ('Error:mes no v�lido');
    end;
  end else if d=30 then begin
    if mm=2 then begin
      raise Exception.Create ('Error:mes no v�lido');
    end else begin
      m:=mm;
    end;
  end else if d=29 then begin
    if mm=2 then begin//podria ser
      if EsBisiesto then begin
        m:=mm;
      end else begin
        raise Exception. Create ('Error: mes no v�lido');
      end;
    end else begin
      m:= mm;
    end;
  end else begin
    m:=mm;
  end;

end;

function Fecha.ToStr: string;
begin
  ToStr:= inttostr(d) + '/' + inttostr(m)+ '/' +inttostr(a);
end;

end.
