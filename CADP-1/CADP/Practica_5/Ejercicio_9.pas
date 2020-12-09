program ejercicio_9;
const
  dimF=200;
type
  cadena=string[50];
  foto=record
    titulo:cadena;
    autor:cadena;
    cant_mg:integer;
    cant_clics:integer;
    cant_comentarios:integer;
  end;
  vector=array [1.. dimF] of foto;

procedure leer(var reg:foto);
begin
  write('Ingrese el titulo: ');
  readln(reg.titulo);
  write('Ingrese el autor: ');
  readln(reg.autor);
  write('Ingrese la cantidad de me gustas: ');
  readln(reg.cant_mg);
  write('Ingrese la cantidad de clicks: ');
  readln(reg.cant_clics);
  write('Ingrese la cantidad de comentarios: ');
  readln(reg.cant_comentarios);
end;

procedure cargarVector(var vec:vector;var dimL:integer);
var
  i:integer;
  reg:foto;
begin
  dimL:=0;
  writeln('Ingrese los datos de las fotos: ');
  for i:=1 to dimF do begin
    Leer(reg);
    vec[i]:=reg;
    dimL:=dimL+1;
  end;
end;

procedure calcular(vec:vector;dimL:integer); // Para recorrer el vector una sola vez
var
  max,maxPos:integer;
  cant_vandelay:integer;
  i:integer;
begin
  max:=-999;
  maxPos:=-1;
  cant_vandelay:=0;
  for i:=1 to dimL do begin
    if(vec[i].cant_clics> max) then begin
      max:=vec[i].cant_clics;
      maxPos:=i;
    end;
    if(vec[i].autor = 'Art Vandelay')then
      cant_Vandelay:= cant_Vandelay + vec[i].cant_mg;
    writeln('Cantidad de comentarios de la foto ',vec[i].titulo,' es: ',vec[i].cant_comentarios);
  end;
  writeln;
  writeln('El titulo de la foto mas vista es: ',vec[maxPos].titulo,' (cant clicks: ',max,')');
  writeln('La cantidad total de "Me Gusta" en las fotos del autor Art Vandelay es: ',cant_Vandelay);
end;

var
  vec:vector;
  dimL:integer;
begin
  cargarVector(vec,dimL);
  calcular(vec,dimL);
  readln;
end.


