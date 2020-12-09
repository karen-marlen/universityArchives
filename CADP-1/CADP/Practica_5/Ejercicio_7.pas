program ejercicio_7;
const
  dimF=500;
type
  vector=array[1..dimF] of integer;
  vectorContador=array[0..9] of integer;

procedure cargarVector(var vec:vector;var dimL:integer);
var
  numero:integer;
begin
  dimL:=0;
  writeln('Ingrese una secuencia de numeros (Finalizar con -1): ');
  readln(numero);
  while (dimL<dimF) and (numero<>-1) do begin
    dimL:=dimL +1;
    vec[dimL]:=numero;
    readln(numero);
  end;
end;

procedure inicializarVectorContador(var vecContador:vectorContador);
var
  i:integer;
begin
  writeln('Se procede a inicializar el vector contador');
  for i:=0 to 9 do
    vecContador[i]:=0;
end;

procedure descomponerYSumar(numero:integer;var vecContador:vectorContador);
var
  aux:integer;
begin
  while(numero<>0)do begin
    aux:=numero MOD 10;
    vecContador[aux]:=vecContador[aux] + 1;
    numero:=numero DIV 10;
  end;
end;

procedure calcular(vec:vector;var vecContador:vectorContador;dimL: integer);
var
  i:integer;
begin
  i:=1;
  while(i<=dimL)do begin
    descomponerYSumar(vec[i],vecContador);
    i:=i+1;
  end;
end;

procedure calcular_informar(vecContador:vectorContador);
var
  i:integer;
  maxPos:integer;
  max:integer;
begin
  max:=-999;
  maxPos:=-1;
  for i:=0 to 9 do begin
    if(vecContador[i] = 0) then
      writeln('El numero ', i,' no tuvo ocurrencias')
    else
      writeln('El numero ',i,' aparecio un total de: ',vecContador[i]);
    if(vecContador[i]>max)then begin
      max:=vecContador[i];
      maxPos:=i;
    end;
  end;
  writeln('El digito con mas ocurrencias fue ',maxPos,' con un total de ocurrencias de: ',max);
end;

var
  vec:vector;
  vecContador:vectorContador;
  dimL:integer;
begin
  inicializarVectorContador(vecContador);
  cargarVector(vec,dimL);
  calcular(vec,vecContador,dimL);
  calcular_informar(vecContador);
  readln;
end.
