program ejercicio_6;
const
  dimF=500;
type
  cadena=string[50];
  vector=array[1..dimF] of cadena;

procedure cargarVector(var vec:vector;var dimL:integer);
var
  nombre:cadena;
begin
  dimL:=0;
  writeln('A continuacion ingrese nombres de alumnos (ZZZ para finalizar)');
  readln(nombre);
  while(dimL<dimF) and (nombre<>'ZZZ')do begin
    dimL:=dimL+1;
    vec[dimL]:=nombre;
    readln(nombre);
  end;
end;

procedure eliminarNombre(var vec:vector;var dimL:integer);
var
  i:integer;
  j:integer;
  nombre:cadena;
begin
  i:=1;
  write('Ingrese el nombre a eliminar: ');
  readln(nombre);
  while(i<=dimL) and (vec[i]<> nombre)do begin
    i:=i+1;
  end;
  if(i<=dimL) then begin
    for j:=i+1 to dimL do begin      //Hace un borrado LOGICO ya que si estamos en la ultima posicion no hace el corrimiento de los valores, directamente reduce en 1 la dimension logica y se ignora el dato (despues es pisado si se quiere agregar otro dato)
      vec[j - 1]:= vec[j];
    end;
    dimL:=dimL -1;
  end;
end;

procedure insertar(var vec:vector;var dimL:integer;var pos:integer;var exito:boolean);
var
  nombre:cadena;
  i:integer;
begin
  write('Ingrese un nombre a insertar (En la posicion 4): ');
  readln(nombre);
  if(dimL<dimF) and ((pos>=1) and (pos<=dimL)) then begin
    exito:=true;
    for i:=dimL downto pos do   //Desde la dimension logica (que siempre va a ser menor a la dimF) hasta la posicion pasada como parametro
      vec[i +1]:= vec[i];      // 'Abro el vector' Voy moviendo una posicion adelante los datos que corresponden a la pos en la que me encuentro iterando en el FOR. (Recordar que la iteracion va desde la dimL hasta la pos, es decir DOWNTO)
    vec[pos]:=nombre;          // Una vez llego en la iteracion hasta la POS, itero por ultima vez moviendo el dato en POS a la posicion siguiente y asi me queda todo el vector aumentado en 1 (uno) dejando vec[POS] libre para insertar el dato requerido
    dimL:=dimL + 1;            // Se aumenta la dimension logica en 1 (uno). Como pudimos ver, se inserto el dato haciendo un corrimiento de todo el vector a partir de la posicion buscada.
  end
  else
    exito:=false;
end;

procedure agregar(var vec:vector;var dimL:integer;var exito:boolean);
var
  nombre:cadena;
begin
  write('Ingrese un nombre a insertar: ');
  readln(nombre);
  if(dimL<dimF)then begin
    dimL:=dimL + 1;
    vec[dimL]:=nombre;
    exito:=true
  end
  else
    exito:=false;
end;

procedure imprimirVector(vec:vector;dimL:integer);
var
  i:integer;
begin
  for i:=1 to dimL do
    write(vec[i], ' ');
  writeln;
end;

var
  vec:vector;
  dimL:integer;
  exito:boolean;
  pos:integer;
begin
  cargarVector(vec,dimL);
  imprimirVector(vec,dimL);
  eliminarNombre(vec,dimL);
  imprimirVector(vec,dimL);
  pos:=4;   //Pos requerida por el inciso
  insertar(vec,dimL,pos,exito);
  if(exito)then
    imprimirVector(vec,dimL)
  else
    writeln('Hubo un error y no pudo insertarse el nombre en la POS 4');
  agregar(vec,dimL,exito);
  if(exito)then
    imprimirVector(vec,dimL)
  else
    writeln('No hay espacio suficiente en el vector');
  readln;
end.
