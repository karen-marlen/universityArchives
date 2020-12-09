{Se lee una secuencia de caracteres terminada en '*'. La secuencia está
dividida en oraciones que terminan en punto. Para cada oración se 
pide contar e informar la cantidad de veces que aparece la subsecuencia 'TE'. 
Además informar en cuántas oraciones no aparece dicha 
subsecuencia.}

program Ejercicio8;

var
      car,carant:char;
      conTE,sinTE:integer;
begin
      sinTE:=0;
      read(car);
      while (car<>'*') do begin
            while (car='.') do
                  read(car);
            conTE:=0;
            carant:='b';
            while (car<>'.') and (car<>'*') do begin
                  if (carant='T') and (car='E') then
                        conTE:=conTE+1;
                  carant:=car;
                  read(car);
            end;
            writeln('Subsecuencia TE:',conTE);
            if (conTE=0) then
                  sinTE:=SinTE+1;
      end;
      writeln('Sin subsecuencia TE:',sinTE);
end.