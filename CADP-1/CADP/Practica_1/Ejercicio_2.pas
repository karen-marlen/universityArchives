program ejercicio_2;
var
  numero:double;
begin
  write('Ingrese un numero: ');
  readln(numero);
  if(numero>=0)then
    writeln('El valor absoluto de ',numero:1:2,' es: ',numero:1:2)
  else
    writeln('El valor absoluto de ',numero:1:2,' es: ',numero*(-1):1:2);
  readln;
end.
