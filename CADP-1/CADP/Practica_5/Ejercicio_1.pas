program sumador;
type
  vnums = array [1..10] of integer;
var
  numeros:vnums;
  i:integer;
begin
  for i:=1 to 10 do {Primer bloque for}
    numeros[i]:=i;

    for i:= 2 to 10 do {Segundo bloque for}
      numeros[i]:= numeros[i] + numeros [i - 1];

  readln; //Para que no se cierre la ventana al ejecutarlo
end.


{
Respuestas:  (PD: Si quieren pueden agregar la impresion del arreglo para ver los resultados)

A) Que valores toma la variable numeros al finalizar el primer bloque for?

   Rta= La variable numero (array) toma los valores del 1 al 10 (En la primera posicion del arreglo
   se guarda el 1, en la segunda el 2 y asi sucesivamente...)

B) Al terminar el programa, con que valores finaliza la variable numeros?

   Rta= La variable numero termina con los mismos valores que tenia en la primera iteracion
        (1 - 3 - 6 - 10 - 15 - 21 - 28 - 36 - 45 - 55). Suma con los valores previamente guardados (del 1 al 10) con lo que se encuentra en la celda anterior a la misma.

C) Si se desea cambiar la linea 11 por la sentencia for i:=1 to 9 do
   Como debe modificarse el codigo para que la variable Numeros contenga los mismo valores que en 1.b)?

   Rta=
        for i:=1 to 9 do
          numeros[i+1]:=numeros[i] + numeros [i + 1];

D) Que valores estan contenidos en la variable numeros si las lineas 11 y 12 se reemplazan por :

        for i:= 1 to 9 do
          numeros[i+1]:=numeros[i];

   Rta= Los valores que imprime para todo el arreglo es 1 (uno).
        Esto sucede ya que originalmente en la posicion 1 del arreglo tenemos el valor 1 (uno) proveiamente almacenado
        Cuando hacemos numeros [i+1] estamos queriendo almacenar en la posicion siguiente de i, que seria la posicion 2 (dos)
        Procedemos a guardar en posicion numeros[2] el valor de numeros[1] que seria 1.
        Para el proximo valor, queremos guardar en numeros [3] lo que hay en numeros[2] y asi sucesivamente (todos con el valor 1);
}
