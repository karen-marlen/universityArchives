program ejercicio_11;
const
  dimF=10000;
type
  computadoras=record
    version:double;
    cant_paquetes:integer;
    cant_cuentas:integer;
  end;
  vector=array [1..dimF] of computadoras;

procedure Leer(var reg:computadoras);
var
  corte:double;
begin
  corte:=4.10;
  write('Ingrese la version de Ubuntu de la computadora: ');
  readln(reg.version);
  if(reg.version<> corte) then begin
    write('Ingrese la cantidad de paquetes de la compu: ');
    readln(reg.cant_paquetes);
    write('Ingrese la cantidad de cuentas de la compu: ');
    readln(reg.cant_cuentas);
  end;
end;

procedure cargarVector(var vec:vector;var dimL:integer);
var
  reg:computadoras;
  num:double;
begin
  dimL:=0;
  num:=4.10;
  writeln('Ingrese la informacion de la computadora: ');
  Leer(reg);
  while(dimL<dimF) and (reg.version <> num) do begin
    dimL:=dimL +1;
    vec[dimL]:=reg;
    Leer(reg);
  end;
end;

procedure informar_cantCompus(vec:vector;dimL:integer);
var
  cantVersiones:integer;
  i:integer;
  version1,version2:double;
begin
  cantVersiones:=0;
  i:=1;
  version1:=18.04; //Para mejorar el algoritmo pasarlos por parametros :)
  version2:=16.04;
  while(i<=dimL)do begin
    if((vec[i].version = version1) or (vec[i].version = version2)) then
      cantVersiones:=cantVersiones + 1;
    i:=i+1;
  end;
  writeln('La cantidad de computadoras que usan la version 18.04 o 16.04 es: ',cantVersiones);
end;

procedure calcular_promedio(vec:vector;dimL:integer);
var
  suma:integer;
  i:integer;
begin
  suma:=0;
  for i:=1 to dimL do
    suma:=vec[i].cant_cuentas + suma;
  writeln('El promedio de cuentas de usuario por computadora es: ',(suma/dimL):1:2);
end;

procedure versionMayorCantPaquetes(vec:vector;dimL:integer);
var
  i:integer;
  max:integer;
  maxPos:integer;
begin
  max:=-999;
  maxPos:=-1;
  for i:=1 to dimL do begin
    if(vec[i].cant_paquetes>max)then begin
      max:=vec[i].cant_paquetes;
      maxPos:=i;
    end;
  end;
  writeln('La version de Ubuntu de la computadora con mayor cantidad de paquetes instalados es: ',(vec[maxPos].version):1:2);
end;

var
  dimL:integer;
  vec:vector;
begin
  cargarVector(vec,dimL);
  informar_cantCompus(vec,dimL);
  calcular_promedio(vec,dimL);
  versionMayorCantPaquetes(vec,dimL);
  readln;
end.
