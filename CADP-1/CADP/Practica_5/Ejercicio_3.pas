program ejercicio_3; //No completado jiji
const
  dimF=5;
type
  arreglo=array [1..dimF] of integer;

function posicion(vector:arreglo;x:integer;dimL:integer):integer;
var
  i:integer;
begin
  i:=1;
  while(vector[i] <> x) and (i<=dimL)do begin //1 2 3 4 5 ---- 6
    writeln(i);
    i:=i +1;
  end;
  if(i<=dimL)then      //Nota: Funciona porque aunque este en la ultima posicion si evalua Verdadero no procede a sumar +1 en i por lo que se queda en 5 y no avanza a 6
    posicion:=i
  else
    posicion:=-1;
end;

var
  vector:arreglo;
  dimL:integer;
  i:integer;
  x:integer;
  aux:integer;
begin
  dimL:=0;
  for i:=1 to 5 do begin
    dimL:=dimL+1;
    readln(vector[i]);
  end;
  writeln('DIML: ',dimL);
  writeln('Ingrese el numero a buscar: ');
  readln(x);
  aux:=posicion(vector,x,dimL);
  if(aux<>-1)then
    writeln('Se encontro el numero ',x,'en la posicion: ',aux)
  else
    writeln('No se encontro');
  readln;
end.
