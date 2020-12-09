program ejercicio_video;


Type
maximo = record
  cantidad: integer;
  nombre: string;
end;

sitio = record
  nombre: string;
  provincia: string;
  cant_actividades: integer;
  cant_personas: integer;
end;



procedure leerRegistro(var lugar:sitio);
begin
  with lugar do begin
    writeln('Ingrese el nombre del lugar');
    readln(nombre);
    if (nombre <> 'fin') then begin
    writeln('Ingrese la provincia');
    readln(provincia);
    writeln('Ingrese la cantidad de actividades');
    readln(cant_actividades);
    writeln('Ingrese la cantidad de personas');
    readln(cant_personas);
    end;
  end;
end;

procedure actualizarMaximo(cantAct:integer; nombre:string; var max:maximo);
begin
  if (cantAct >= max.cantidad) then
  begin
    max.cantidad := cantAct;
    max.nombre := nombre;
  end;
end;

procedure actualizarVisitados(cantPers:integer; var masVisitados:integer);
begin 

  if (cantPers > 20000) then begin
    masVisitados := masVisitados + 1;
  end;
end;


var
maxActividades:maximo;
lugar: sitio;
masVisitados:integer;

begin
masVisitados:=0; 
maxActividades.cantidad:=-1;
leerRegistro(lugar);
while(lugar.nombre <> 'fin') do begin
  actualizarMaximo(lugar.cant_actividades, lugar.nombre, maxActividades);
  actualizarVisitados(lugar.cant_personas, masVisitados);
  leerRegistro(lugar);
end;
writeln('El sitio con mayor cantidad de actividades fue ', maxActividades.nombre);
writeln('La cantidad de lugares con mas de 20000 visitantes en un mes fue de ', masVisitados);
end.