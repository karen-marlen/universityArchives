program ejercicio_dos;
var
  numero1:integer;
  numero2:integer;
  total:integer;
begin
  write('Ingrese el primer numero: ');
  readln(numero1);
  write('Ingrese el segundo numero: ');
  readln(numero2);
  total:=numero1+numero2;
  writeln('La suma de los numeros usando una variable adicional es: ', total);
  writeln('La suma de los numeros sin usar una variable adicional es: ', numero1+numero2);
  readln;
end.
