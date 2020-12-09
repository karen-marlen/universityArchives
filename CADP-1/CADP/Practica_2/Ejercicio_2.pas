Program ejercicio_2;
var
  max,numero:integer;
  i:integer;
begin
  max:=-999;
  for i:=1 to 10 do begin
    write('Ingrese un numero: ');
    readln(numero);
    if(numero>max)then
      max:=numero;
  end;
  writeln('El mayor numero leido fue: ',max);
  readln;
end.
