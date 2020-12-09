Program ejercicio_6;
var
  legajo:integer;
  promedio:double;
  cant_alumnos:integer;
  cant_conPromedio:integer;
  alumnos_destacados:integer;
begin
  cant_alumnos:=0;
  cant_conPromedio:=0;
  alumnos_destacados:=0;
  write('Ingrese el legajo del alumno: ');
  readln(legajo);
  while(legajo <> -1) do begin
    write('Ingrese el promedio del alumno: ');
    readln(promedio);
    cant_alumnos:=cant_alumnos +1;
    if(promedio>6.5) then
      cant_conPromedio:=cant_conPromedio +1;
    if(promedio>8.5) and (legajo<2500) then
      alumnos_destacados:=alumnos_destacados +1;
    write('Ingrese otro legajo: ');
    readln(legajo);
  end;
  writeln('Cantidad de alumnos: ',cant_alumnos);
  writeln('Cantidad de alumnos con promedio mayor a 6,5: ', cant_conPromedio);
  writeln('Porcentaje destacados: ',(alumnos_destacados/cant_alumnos)*100:1:2);
  readln;
end.
