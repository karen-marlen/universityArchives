program ejercicio_4;
var
  numero:integer;
  min1,min2:integer;
  i:integer;
begin
  min1:=999;
  min2:=999;
  for i:=1 to 10 do begin
    write('Ingrese un numero: ');
    readln(numero);
    if(numero<min1)then begin
      min2:=min1;
      min1:=numero;
    end
    else
      if(numero<min2) and (numero <> min1) then
        min2:=numero;
  end;
  writeln('Minimo 1: ',min1);
  writeln('Minimo 2: ',min2);
  readln;
end.
