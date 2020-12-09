program ejercicio_10;
const
  dimF=200;
type
  viaje=record
    dia:1..31;
    monto:double;
    distancia:double;
  end;
  vector= array [1..dimF] of viaje;

procedure Leer(var reg:viaje);
begin
  write('Ingrese dia (1 - 31): ');
  readln(reg.dia);
  write('Ingrese el monto: ');
  readln(reg.monto);
  write('Ingrese la distancia: ');
  readln(reg.distancia);
end;

procedure cargarVector(var vec:vector;var dimL:integer);
var
  reg:viaje;
begin
  dimL:=0;
  writeln('Ingrese los datos de los viajes (A lo sumo 200)');
  Leer(reg);
  while(dimL<dimF) and (reg.distancia<>0) do begin
    dimL:=dimL + 1;
    vec[dimL]:=reg;
    Leer(reg);
  end;
end;

procedure informar_B(vec:vector;dimL:integer);
var
  suma:double;
  max:double;
  maxPos:integer;
  i:integer;
begin
  suma:=0;
  max:=-999;
  maxPos:=-1;
  for i:=1 to dimL do begin
    suma:=suma + vec[i].monto;
    if(vec[i].monto>max)then begin
      max:=vec[i].monto;
      maxPos:=i;
    end;
  end;
  writeln('El monto promedio es: ',(suma/dimL):1:2);
  writeln('Dia en que se hizo el viaje que tranporto mas dinero: ',vec[maxPos].dia);
  writeln('Distancia que se hizo en el viaje que tranporto mas dinero: ',(vec[maxPos].distancia):1:2);
end;

procedure eliminar_viajesConDistancia(var vec:vector;var dimL:integer);
var
  j:integer;
  i:integer;
begin
  i:=1;
  while(i<=dimL) do begin
  {Avanzo sobre el vector mientras no encuentre el elemento a borrar}
    while(i<=dimL) and (vec[i].distancia<>100) do
      i:=i +1;
    {O lo encontro o se termino el vector}
    if(i<=dimL) then begin
      {lo encontro}
      for j:= i + 1 to dimL do
        vec[j - 1]:= vec[j]; {Copia sobre el dato a eliminar el valor que esta en la celda siguiente del vector}
      dimL:=dimL - 1;
    end;
  end;
end;

procedure imprimirVector(vec:vector;dimL:integer);
var
  i:integer;
begin
  for i:=1 to dimL do
    writeln((vec[i].monto):1:2);
end;

var
  vec:vector;
  dimL:integer;
begin
  cargarVector(vec,dimL);
  writeln;
  imprimirVector(vec,dimL);
  writeln;
  informar_B(vec,dimL);
  eliminar_viajesConDistancia(vec,dimL);
  writeln;
  imprimirVector(vec,dimL);
  readln;
end.

