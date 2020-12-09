program ejercicio_6;
{ Suma los numeros entre a y b, y retorna el resultado en c}
procedure sumar(a,b,c: integer);
var
  suma:integer;
begin

  for i:=a to b do
    suma:=suma + i;
  c:=c + suma;
end;
var
  result:integer;
begin
  result:=0;
  readln(a);readln(b);
  sumar(a,b,0);
  write('La suma total es: ',result);
  {Averigua si el resultado final estuvo entre 10 y 30}
  ok:=(result>=10) or (result<=30);
  if(not ok)then
    write('La suma no quedo entre 10 y 30');
  readln;
end.

{

Error linea 16, se quiere usar las variables a y b para leer un dato pero no estan declaradas en la zona de variables del main. (No existen)
Error linea 8, se quiere usar la variable i que no esta declarada ni inicializada
Error linea 9, se quiere usar la variable suma que no esta inicializada con 'i' que no existe
Error linea 10, se quiere usar la variable suma que no esta inicializada y sumarle la variable 'C' (que vale 0)

El procedure sumar no retorna el resultado en 'c' ya que dicho parametro es local y se paso un valor entero (el valor 0) y no una variable donde se almacene el resultado. Error semantico.
La variable result en main nunca toma un valor ya que no se pasa como argumento al procedure sumar. Por lo tanto la linea 19 no tiene sentido. Error semantico.

}
