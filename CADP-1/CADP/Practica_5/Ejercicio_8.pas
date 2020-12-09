program ejercicio_8;
const
  dimF=300;
type
  cadena=string[50];
  empleado=record
    nombre:cadena;
    salario:double;
  end;
  vector=array [1..dimF] of empleado;

procedure Leer(var reg:empleado);
begin
  write('Ingrese el nomnre completo del emepleado: ');
  readln(reg.nombre);
  write('Ingrese el salario del empleado: ');
  readln(reg.salario);
end;

procedure cargarVector(var vec:vector;var diml:integer);
var
  reg:empleado;
begin
  dimL:=0;
  writeln('A continuacion ingrese datos de los empleados (Para finalizar ingrese 0 (cero) como valor de salario)');
  Leer(reg);
  while(dimL<dimF) and (reg.salario<>0) do begin
    dimL:= dimL + 1;
    vec[dimL]:=reg;
    Leer(reg);
  end;
end;

procedure incrementar_salario(var vec:vector;dimL:integer;X:double);
var
  i:integer;
begin
  for i:=1 to dimL do
    vec[i].salario:=vec[i].salario+(vec[i].salario*X)
end;

procedure informar_sueldoPromedio(vec:vector;dimL:integer);
var
  suma:double;
  i:integer;
begin
  suma:=0;
  for i:=1 to dimL do
    suma:=vec[i].salario + suma;
  writeln('El sueldo promedio de los empleados de la empresa es: ',(suma/dimL):1:2);
end;

var
  vec:vector;
  dimL:integer;
  X:double;
begin
  cargarVector(vec,dimL);
  X:=0.15;
  incrementar_salario(vec,dimL,X); //Punto A
  informar_sueldoPromedio(vec,dimL); // Punto B
  readln;
end.

