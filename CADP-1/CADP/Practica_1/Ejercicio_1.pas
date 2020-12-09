program Ejercicio_1;
var
  numero_uno:integer;
  numero_dos:integer;
begin
  write('Ingrese el primer numero: ');
  readln(numero_uno);
  write('Ingrese el segundo numero: ');
  readln(numero_dos);
  if(numero_uno>numero_dos) then
    writeln('El primer numero (',numero_uno,') es mayor')
  else
    if(numero_dos>numero_uno)then
      writeln('El segundo numero (',numero_dos,') es mayor')
    else
      writeln('Los numeros leidos son iguales');
  readln;
end.
