program ejercicio_5;
var
  numero:integer;
  max:integer;
  min:integer;
  total:integer;
begin
  min:=999;
  max:=-999;
  total:=0;
  repeat
    write('Ingrese un numero: ');            //La lectura finaliza cuando se lee el numero 100
    readln(numero);
    if(numero<min)then
      min:=numero;
    if(numero>max)then
      max:=numero;
    total:=total+numero;
  until(numero = 100);
  writeln('El numero maximo leido es: ',max);
  writeln('El numero minimo leido es: ',min);
  writeln('El total de los numeros leidos es: ',total);
  readln;
end.
