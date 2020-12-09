program Vectores;
const
  cant_datos=5;     //dimension fisica
type
  vDatos = array [1.. cant_datos] of real;

procedure cargarVector (var v:vDatos; var dimL: integer);
var
  numero:double;
begin
  write('Ingrese un numero: ');
  readln(numero);
  while(numero<>0) and (dimL<cant_datos) do begin
    dimL:=dimL +1;
    v[dimL]:=numero;
    write('Ingrese un numero: ');
    readln(numero);
  end;
end;

procedure modificarVectorYSumar(var v:vdatos; dimL:integer; n:real; var suma:real);
var
  i:integer;
begin
  for i:= 1 to dimL do begin
    v[i]:=v[i]+n;
    suma:=v[i] + suma;
  end;
end;

{Programa Principal}

var
  datos: vDatos;
  i,dim:integer;
  num,suma:real;
begin
  dim:=0;
  suma:=0;
  cargarVector(datos,dim);
  writeln('Ingrese un valor a sumar ');
  readln(num);
  modificarVectorYSumar(datos,dim,num,suma);
  writeln('La suma de los valores es: ',suma:1:2);
  writeln('Se procesaron: ',dim, ' numeros');
  readln;
end.
