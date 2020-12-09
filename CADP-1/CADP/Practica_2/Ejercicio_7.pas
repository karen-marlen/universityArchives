program ejercicio_7;
var
  nombre:String[50];
  tiempo:integer;
  i:integer;
  max_tiempo1,max_tiempo2:integer;
  max_nombre1,max_nombre2:String[50];
  min_tiempo1,min_tiempo2:integer;
  min_nombre1: String[50];
  min_nombre2:String[50];
begin
  max_tiempo1:=-999;
  max_tiempo2:=-999;
  min_tiempo1:=999;
  min_tiempo2:=999;
  max_nombre1:=' ';
  max_nombre2:=' ';
  min_nombre1:=' ';
  min_nombre2:=' ';
  for i:=1 to 10 do begin
    write('Ingrese el nombre del piloto: ');
    readln(nombre);
    write('Ingrese el tiempo en el que termino la carrera: ');
    readln(tiempo);
    if(tiempo>max_tiempo1) then begin       //Los mas rapidos
      max_tiempo2:=max_tiempo1;
      max_nombre2:=max_nombre1;
      max_nombre1:=nombre;
      max_tiempo1:=tiempo;
    end
    else
      if(tiempo>max_tiempo2) then begin
        max_tiempo2:=tiempo;
        max_nombre2:=nombre;
      end;
    if(tiempo<min_tiempo1)then begin       //Los mas lentos
      min_tiempo2:=min_tiempo1;
      min_nombre2:=min_nombre1;
      min_tiempo1:=tiempo;
      min_nombre1:=nombre;
    end
    else
      if(tiempo<min_tiempo2)then begin
        min_tiempo2:=tiempo;
        min_nombre2:=nombre;
      end;
  end;
  writeln('Primer puesto: ',max_nombre1, ' - Tiempo: ',max_tiempo1);
  writeln('Segundo puesto: ',max_nombre2, ' - Tiempo: ',max_tiempo2);
  writeln('Ultimo puesto: ',min_nombre1, ' - Tiempo: ',min_tiempo1);
  writeln('Anteultimo puesto: ',min_nombre2, ' - Tiempo: ',min_tiempo2);
  readln;
end.

end.
