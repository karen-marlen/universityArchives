program ejercicio_2_a;
var
  max,numero,i:integer;
  pos:integer;
begin
  max:=-999;
  pos:=-1;
  for i:=1 to 10 do begin
    write('Ingrese un numero: ');
    readln(numero);
    if(numero>max)then begin
      max:=numero;
      pos:=i;
    end;
  end;
  writeln('El mayor numero leido fue ',max,' en la posicion ', pos);
  readln;
end.
