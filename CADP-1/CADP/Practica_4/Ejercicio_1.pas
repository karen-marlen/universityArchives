program Registros;
type
  str20=string[20];
  alumno=record
    codigo:integer;
    nombre:str20;
    promedio:real;
  end;
procedure leer(var alu:alumno);
begin
  writeln('Ingrese el codigo del alumno');
  readln(alu.codigo);
  if(alu.codigo<>0)then begin
    writeln('Ingrese el nombre del alumno');
    readln(alu.nombre);
    writeln('Ingrese el promedio del alumno');
    readln(alu.promedio);
  end;
end;

procedure calcularPromedio(var max_promedio:double; var mejor_alumno:str20; reg:alumno);
begin
  if(reg.promedio>max_promedio)then begin
    max_promedio:=reg.promedio;
    mejor_alumno:=reg.nombre;
  end;
end;
{Declaracion de variables del programa principal}
var
  a:alumno;
  max_promedio:double;
  mejor_alumno:str20;
{Cuerpo del programa principal}
begin
  max_promedio:=-999;
  Leer(a);
  while(a.codigo<>0)do begin
    calcularPromedio(max_promedio,mejor_alumno,a);
    Leer(a);
  end;
  writeln('El alumno con mejor promedio es: ',mejor_alumno,' con un promedio de: ',max_promedio:1:2);
  readln;
end.
