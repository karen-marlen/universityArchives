Program ejercicio_4;
Procedure intercambio (var num1,num2:integer); //Los dos entran por referencia
var
  aux:integer;
begin
  aux:=num1;
  num1:=num2;
  num2:=aux;
end;

Procedure sumar(num1:integer;var num2:integer);
begin
  num2:=num1+num2;
end;

var
  i,num1,num2:integer;
begin
  readln(num1);
  readln(num2);
  for i:= 1 to 3 do begin
    intercambio(num1,num2);
    sumar(i,num1);
  end;
  writeln(num1);
  writeln(num2);
  readln;
end.

{
A) Que imprime si se leen los valores num1=10 y num2=5 ?

Rta=

}

