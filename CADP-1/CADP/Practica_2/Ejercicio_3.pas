program ejercicio_tres;
var
  nombre:string[50];
  nota:integer;
  cant_aprobados:integer;
  cant_siete:integer;
begin
  cant_aprobados:=0;
  cant_siete:=0;
  repeat
    write('Ingrese el nombre: ');
    readln(nombre);
    write('Ingrese la nota: ');
    readln(nota);
    if(nota>=8) then
      cant_aprobados:=cant_aprobados+1;
    if(nota=7) then
      cant_siete:=cant_siete+1;
  until(nombre='Zidane Zinedine');
  writeln('Cantidad de aprobados (nota 8 o superior): ', cant_aprobados);
  writeln('Cantidad con nota igual a siete: ',cant_siete);
  readln;
end.
