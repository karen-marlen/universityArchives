program ejercicio_4;
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

function elementoMaximo(vector:vector;dimL:integer):integer;
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
end;

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

var
  vec:vector;
  dimL:integer;
  mayorElemento,menorElemento:integer;
begin
  cargarVector(vec,dimL);
  mayorElemento:=elementoMaximo(vec,dimL);
  menorElemento:=elementoMinimo(vec,dimL);
  intercambio(vec,mayorElemento,menorElemento);
  writeln('El elemento maximo ', vec[menorElemento],' que se encontraba en la posicion ', mayorElemento,
  ' fue intercambiado con el elemento minimo ',vec[mayorElemento],' que se encontraba en la posicion ',menorElemento);
  readln;
end.
