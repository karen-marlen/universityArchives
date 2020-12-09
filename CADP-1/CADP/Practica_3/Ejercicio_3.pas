program ejercicio_3;
procedure suma(num1:integer; var num2:integer);
begin
  num2:=num1+num2;
  //writeln(num1);
  num1:=0;
  //writeln(num1);
end;

var
  i,x:integer;
begin
  readln(x);             {leo la variable x}
  for i:=1 to 5 do begin
    //writeln(i);
    suma(i,x);
  end;
  write(x);            {imprimo la variable x}
  readln;
end.

{

a) Que imprime si se lee el valor 10 en la variable x?

Rta= Imprime 25.
     X=10; ---> Se pasa en suma(i,x). La variable I entra por valor (no se modifica)
                La variable X entra por referencia, es decir se ve modificada en Main
     1) X= 1+10 // 11
     2) X= 2+11 // 13
     3) X= 3+13 // 16
     4) X= 4+16 // 20
     5) X= 5+20 // 25

b) Que imprime si se lee el valor 10 en la variable x y se cambia el encabezado del procedure por:
   procedure suma(num1: integer; num2:integer);

   Rta= Imprime el valor leido en readln(X) (en este caso 10) ta que el parametro en suma()
        es pasado por valor, es decir, se pasa una copia para trabajar de forma local

c) Que sucede si se cambia ael encabezado del procedure por:
   procedure suma( var num1: integer; var num2: integer);

   Rta= Queda en un bucle infinito ya que la variable i del main es modificada
        (como num1 en suma ()) quedando en valor 0. Cuando vuelve al main sigue en el for
        dandole un valor 1 y repitiendo el ciclo infinitas veces hasta quedarse sin memoria
}
