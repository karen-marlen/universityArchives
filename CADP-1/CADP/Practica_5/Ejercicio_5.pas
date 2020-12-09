program ejercicio_5;
const
  dimF=100;
type
  vector=array [1..dimF] of integer;

function posicion(vector:vector;x:integer;dimL:integer):integer;
var
  i:integer;
begin
  i:=1;
  while(vector[i] <> x) and (i<=dimL)do begin //1 2 3 4 5 ---- 6
    i:=i +1;
  end;
  if(i<=dimL)then      //Nota: Funciona porque aunque este en la ultima posicion si evalua Verdadero no procede a sumar +1 en i por lo que se queda en 5 y no avanza a 6
    posicion:=i
  else
    posicion:=-1;
end;

procedure intercambio(var vector:vector;x,y:integer);
var
  aux:integer;
begin
  aux:=vector[x];
  vector[x]:=vector[y];
  vector[y]:=aux;
end;

function sumaVector(v:vector;dimL:integer):integer;
var
  suma:integer;
  i:integer;
begin
  suma:=0;
  for i:=1 to dimL do
    suma:=suma + v[i];
  sumaVector:=suma;
end;

function promedio(v:vector;dimL:integer):double;
var
  aux:integer;
begin
  aux:=sumaVector(v,dimL);
  promedio:=aux/dimL;
end;

procedure elemento_MaxMin(vector:vector;dimL:integer;var max,maxPos,min,minPos:integer);
var
  i:integer;
begin
  max:=-999;
  maxPos:=-1;
  min:=999;
  minPos:=-1;
  for i:=1 to dimL do begin
    if(vector[i]>max)then begin
      max:=vector[i];
      maxPos:=i;
    end;
    if(vector[i]<min)then begin
      min:=vector[i];
      minPos:=i;
    end;
  end;
end;

{function elementoMaximo(vector:vector;dimL:integer):integer;
var
  max:integer;
  maxPos:integer;
  i:integer;
begin
  max:=-999;
  maxPos:=-1;
  for i:=1 to dimL do begin
    if (vector[i]>max) then begin
      max:=vector[i];
      maxPos:=i;
    end;
  end;
  elementoMaximo:=maxPos;
end;

function elementoMinimo(vector:vector;dimL:integer):integer;
var
  min:integer;
  minPos:integer;
  i:integer;
begin
  min:=999;
  minPos:=-1;
  for i:=1 to dimL do begin
    if(vector[i]<min)then begin
      min:=vector[i];
      minPos:=i;
    end;
  end;
  elementoMinimo:=minPos;
end;}

procedure cargarVector(var vector:vector;var dimL:integer);
var
  numero:integer;
begin
  dimL:=0;
  writeln('Ingrese la secuencia de numeros (Finaliza con 0): ');
  readln(numero);
  while(numero<>0)and(dimL<dimF)do begin
    dimL:=dimL+1;
    vector[dimL]:=numero;
    readln(numero);
  end;
end;

procedure imprimirVector(vector:vector;dimL:integer);
var
  i:integer;
begin
  writeln('Se imprime el vector');
  for i:=1 to dimL do
    writeln(vector[i]);
end;

var
  vec:vector;
  dimL:integer;
  max,maxPos,min,minPos:integer;
begin
  cargarVector(vec,dimL);
  //imprimirVector(vec,dimL);  Pueden usar las impresiones para verificar si el intercambio se realizo correctamente.
  elemento_MaxMin(vec,dimL,max,maxPos,min,minPos);
  intercambio(vec,maxPos,minPos);
  //imprimirVector(vec,dimL);
  writeln('El elemento maximo ', max,' que se encontraba en la posicion ', maxPos,
  ' fue intercambiado con el elemento minimo ',min,' que se encontraba en la posicion ',minPos);
  readln;
end.
