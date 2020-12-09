program ejercicio4;
var
  numero:double;
  numero_ingresado:double;
begin
  write('Ingrese un numero: ');
  readln(numero);
  write('Ingrese otro numero: ');
  readln(numero_ingresado);
  while(numero<>numero_ingresado)do begin
    write('Ingrese otro numero: ');
    readln(numero_ingresado);
  end;
  writeln('Se salio del bucle ya que coincidieron los numeros');
  readln;
end.
