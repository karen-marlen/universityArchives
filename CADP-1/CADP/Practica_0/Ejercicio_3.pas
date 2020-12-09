program ejercicio_3;
var
  numero1:double;
  numero2:double;
  resultado:double;
begin
  write('Ingrese el primer numero: ');
  readln(numero1);
  write('Ingrese el segundo numero: ');
  readln(numero2);
  write('El resultado de la division de ambos numeros es: ');
  resultado:=numero1/numero2;
  writeln(resultado:1:2);
  readln;
end.
