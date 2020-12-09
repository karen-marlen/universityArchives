program ejercicio_5;
procedure digParesImpares(num:integer; var par,impar:integer);
var
  dig:integer;
begin
  while(num<>0) do begin
    dig:=num mod 10;          //Agarra el ultimo numero
    if((dig mod 2)= 0) then   //Verifica si al dividir por 2 da resto 0
      par:=par + 1
    else
      impar:= impar+1;
    num:= num DIV 10;         //Elimino el ultimo numero. Ejemplo -> 250 pasa a 25
  end;                       // despues pasa a 2 y por ultimo a 0 donde sale del while
end;

var
  dato,pares,impares,total,cant:integer;
begin
  pares:=0;
  impares:=0;
  repeat
    readln(dato);
    digParesImpares(dato,pares,impares);
  until(dato=100);
  writeln('Pares: ',pares, 'Impares: ', impares);
  readln;
end.

{
A) Que imprime si se lee la siguiente secuencia de valores? 250, 35, 100

Rta= Pares: 4 Impares: 4 (Descompone los numeros y cuenta pares e impares. El 100 lo cuenta)

}
