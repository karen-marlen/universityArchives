{Modulos}
program ej2;
const cant_datos = 150;
type  vdatos = ​array​[1..cant_datos] of real;
procedure cargarVector(​var​ v:vdatos; var​ dimL : integer);
var num:real;
begin
  dimL:=0;
  read(num);
  while ((num <> 0) and (dimL <= cant_datos)) do begin 
    dimL := dimL + 1;
    v[dimL] := num;
    read(num);
  end;
end; 


procedure modificarVectorySumar(​var​ v:vdatos;dimL : integer; n: real; ​var ​suma: real);
var i:integer;
begin
suma := 0;
for i:=1 to dimL do begin
  v[i] := v[i] + n;
  suma := suma + v[i];
end;
end​;

var 
datos: vdatos;
dim : integer;
num ,suma : real;

begin 
  dim := 0;
  suma := 0;
  cargarVector(datos, dim);
  writeln('Ingrese un valor a sumar');
  readln(num);
  modificarVectorySumar(datos, dim, num, suma);
  writeln('la suma de los valores es: ', suma);
  writeln('Se procesaron: ', dim, ' numeros');
end.