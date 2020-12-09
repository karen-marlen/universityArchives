program ejercicio_3;    //revisar
type
  cadena=String[50];
  escuela=record
    cue:integer;
    nombre:cadena;
    cant_docentes:integer;
    cant_alumnos:integer;
    localidad:cadena;
  end;

procedure Leer(var reg:escuela);
begin
  write('Ingrese CUE: ');
  readln(reg.cue);
  write('Ingrese el nombre de la escuela: ');
  readln(reg.nombre);
  write('Ingrese cantidad de docentes de la escuela: ');
  readln(reg.cant_docentes);
  write('Ingrese cantidad de alumnos de la escuela: ');
  readln(reg.cant_alumnos);
  write('Ingrese la localidad de la escuela: ');
  readln(reg.localidad);
end;

function calcular_unesco(docentes, alumnos:integer):double;
begin
  calcular_unesco:=alumnos/docentes;
end;

function relacion_unesco(docentes,alumnos:integer):boolean;
begin
  if((calcular_unesco(docentes,alumnos))>23.435)then
    relacion_unesco:=true
  else
    relacion_unesco:=false;
end;

procedure calcular(reg:escuela;var cant_EnLaPlata:integer;var cue_mejor_1:integer;var nombre_mejor_1:cadena;var cue_mejor_2:integer;var nombre_mejor_2:cadena);
var
  max1:double;
  max2:double;
  aux:double;
begin
  max1:=-999;
  max2:=-999;
  if((relacion_unesco(reg.cant_docentes,reg.cant_alumnos)) and (reg.localidad='La Plata')) then
    cant_enLaPlata:=cant_EnLaPlata+1;
  aux:=calcular_unesco(reg.cant_docentes,reg.cant_alumnos);
  if(aux>max1)then begin
    max2:=max1;
    max1:=aux;
    cue_mejor_2:=cue_mejor_1;
    cue_mejor_1:=reg.cue;
    nombre_mejor_2:=nombre_mejor_1;
    nombre_mejor_1:=reg.nombre;
  end
  else
    if(aux>max2)then begin
      max2:=aux;
      cue_mejor_2:=reg.cue;
      nombre_mejor_2:=reg.nombre;
    end;
end;

var
  cant_enLaPlata:integer;
  cue_mejor_1:integer;
  nombre_mejor_1:cadena;
  cue_mejor_2:integer;
  nombre_mejor_2:cadena;
  i:integer;
  reg:escuela;
begin
  cue_mejor_1:=-1;
  cue_mejor_2:=-1;
  nombre_mejor_1:=' ';
  nombre_mejor_2:=' ';
  cant_enLaPlata:=0;
  for i:=1 to 3 do begin
    Leer(reg);
    calcular(reg,cant_EnLaPlata,cue_mejor_1,nombre_mejor_1,cue_mejor_2,nombre_mejor_2);
  end;
  writeln('La cantidad de escuelas de La Plata con relacion superior de UNESCO: ',cant_enLaPlata);
  writeln('La mejor escuela segun la relacion de UNESCO es: ',nombre_mejor_1,' (CUE: ',cue_mejor_1,')');
  writeln('La segunda mejor escuela segun la relacion de UNESCO es: ',nombre_mejor_2,' (CUE: ',cue_mejor_2,')');
  readln;
end.
