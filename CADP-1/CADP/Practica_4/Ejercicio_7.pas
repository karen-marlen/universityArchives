Program ejercicio_7;   // Disclaimer, este algoritmo no fue sometido a testeo
type
  cadena=string[50];
  centro=record
    nombre:cadena;
    universidad:cadena;
    cant_investigadores:integer;
    cant_becarios:integer;
  end;
procedure calcularA(var cantidad:integer); //total centros para cada universidad
begin
  cantidad:=cantidad+1;
end;

procedure universidad_mayor_investigadores(reg:centro;var max:integer;var max_universidad:cadena);  //punto B
begin
  if(reg.cant_investigadores>max)then begin
    max:=reg.cant_investigadores;
    max_universidad:=reg.universidad;
  end;
end;

procedure max_dos_cantbecarios(reg:centro;var max1,max2:cadena;var cant_max1,cant_max2:integer); //punto C
begin
  if(reg.cant_becarios>cant_max1)then begin
    cant_max2:=cant_max1;
    max2:=max1;
    cant_max1:=reg.cant_becarios;
    max1:=reg.nombre;
  end
  else
    if(reg.cant_becarios>cant_max2)then begin
      cant_max2:=reg.cant_becarios;
      max2:=reg.nombre;
    end;
end;

procedure Leer(var reg:centro);
begin
  write('Ingrese el nombre del centro de investigacion: ');
  readln(reg.nombre);
  write('Ingrese la universidad a la que pertenece: ');
  readln(reg.universidad);
  write('Ingrese la cantidad de investigadores que tiene: ');
  readln(reg.cant_investigadores);
  write('Ingrese la cantidad de becarios que tiene: ');
  readln(reg.cant_becarios);
end;

var
  actual:cadena;
  reg:centro;
  cantidad:integer;
  max:integer;
  max_universidad:cadena;
  max1,max2:cadena;
  cant_max1,cant_max2:integer;
begin
  max:=-999;
  max_universidad:=' ';
  Leer(reg);
  while(reg.cant_investigadores<>0) do begin
    cantidad:=0;
    cant_max1:=-999;
    cant_max2:=-999;
    max1:= ' ';
    max2:= ' ';
    actual:=reg.universidad;
    while(actual=reg.universidad) do begin
      calcularA(cantidad);
      universidad_mayor_investigadores(reg,max,max_universidad);
      max_dos_cantbecarios(reg,max1,max2,cant_max1,cant_max2);
      Leer(reg);
    end;
    writeln('UNIVERSIDAD: ',actual);
    writeln('Cantidad de centros: ',cantidad);
    writeln('Centro con mayor cantidad de becarios: ',max1);             // Se informa por cada univesidad
    writeln('Segundo centro con mayor cantidad de becarios: ',max2);   // Si se quiere informar los dos centros mayores de forma global hacer esta operacion afuera del while
    writeln('------- Se cambio de universidad ------- ');             // Y en ese caso se puede agregar una var opcional para el nombre de la universidad
    writeln;
  end;
  writeln('La universidad con la mayor cantidad de investigadores en sus centros es: ',max_universidad);
  readln;
end.
