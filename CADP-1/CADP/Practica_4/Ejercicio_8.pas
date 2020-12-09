program ejercicio_8;     //Testeado pero por si acaso vuelvan a revisarlo ya que en algunas partes seguro puede mejorar :)
type
  cadena=string[50];
  docente=record
    DNI:integer;
    nombreCompleto:cadena;
    email:cadena;
  end;
  proyecto=record
    codigo:integer;
    titulo:cadena;
    docente:docente;
    cant_alumnos:integer;
    escuela:cadena;
    localidad:cadena;
  end;

function cumple_C(cod:integer):boolean;
var
  cant_pares,cant_impares:integer;
  aux:integer;
begin
  cant_pares:=0;
  cant_impares:=0;
  while(cod<>0)do begin
    aux:=cod MOD 10;
    if((aux MOD 2)= 0) then
      cant_pares:=cant_pares+1
    else
      cant_impares:=cant_impares+1;
    cod:=cod DIV 10;
  end;
  if(cant_pares = cant_impares)then
    cumple_C:=true
  else
    cumple_C:=false;
end;

procedure Punto_C(codigo:integer;actualLocalidad,nombre:cadena);
begin
  if(actualLocalidad = 'Daireaux') and (cumple_C(codigo))then  //Punto C
    writeln('Proyecto: ',nombre, ' (Cumplen la condicion del punto C)');
end;

procedure Leer(var reg:proyecto);
begin
  writeln('======================================');
  writeln('               PROYECTO               ');
  writeln('======================================');
  write('Ingrese el codigo del proyecto: ');
  readln(reg.codigo);
  if(reg.codigo<>-1)then begin
    write('Ingrese el titulo: ');
    readln(reg.titulo);
    writeln;
    writeln('Datos del docente a cargo');
    write('DNI: ');
    readln(reg.docente.DNI);
    write('Nombre Completo: ');
    readln(reg.docente.nombreCompleto);
    write('Email: ');
    readln(reg.docente.email);
    writeln;
    write('Ingrese la cantidad de alumnos: ');
    readln(reg.cant_alumnos);
    write('Ingrese el nombre de la escuela: ');
    readln(reg.escuela);
    write('Ingrese la localidad: ');
    readln(reg.localidad);
    writeln('------------------------------------');
    writeln;
  end;
end;

procedure calcular_maxAlumnos(reg:proyecto;cant_alumnos:integer;var max1,max2:integer;var nombre1,nombre2:cadena;var DNI_1,DNI_2:integer);
begin
  if(cant_alumnos>max1)then begin
    max2:=max1;
    nombre2:=nombre1;
    DNI_2:=DNI_1;
    max1:=cant_alumnos;
    nombre1:=reg.escuela;
    DNI_1:=reg.docente.DNI;
  end
  else
    if(cant_alumnos>max2) then begin
      max2:=cant_alumnos;
      nombre2:=reg.escuela;
      DNI_2:=reg.docente.DNI;
    end;
end;

var
  totalEscuelas:integer;
  reg:proyecto;
  actualLocalidad:cadena;
  totalEscuelasLocalidad:integer;
  actualEscuela:cadena;
  cantidad_alumnos:integer;
  max1:integer;
  max2:integer;
  nombre1:cadena;
  nombre2:cadena;
  DNI_1:integer;
  DNI_2:integer;
  reg2:proyecto;
begin
  totalEscuelas:=0;
  max1:=-999;
  max2:=-999;
  nombre1:=' ';
  nombre2:=' ';
  DNI_1:= -999;  // Placeholder
  DNI_2:=-999;  // Placeholder
  Leer(reg);
  while(reg.codigo<>-1)do begin
    actualLocalidad:=reg.localidad;
    totalEscuelasLocalidad:=0;
    while(actualLocalidad=reg.localidad) and (reg.codigo <>-1) do begin
      actualEscuela:=reg.escuela;
      totalEscuelasLocalidad:=totalEscuelasLocalidad+1;
      while(actualEscuela=reg.escuela) and (actualLocalidad = reg.localidad) and (reg.codigo<>-1) do begin
        cantidad_alumnos:=cantidad_alumnos+reg.cant_alumnos; // Punto B
        Punto_C(reg.codigo,actualLocalidad,reg.titulo);  //Punto C duh
        reg2:=reg; //Atado con alambre, en calcular_maxAlumnos si paso 'reg' estoy trabajando con datos nuevos. ERROR!
        Leer(reg);
      end;
      calcular_maxAlumnos(reg2,cantidad_alumnos,max1,max2,nombre1,nombre2,DNI_1,DNI_2); //Punto B
      cantidad_alumnos:=0; //Ya no es la misma escuela
    end;    //Cambie de localidad
    totalEscuelas:=totalEscuelas+totalEscuelasLocalidad;
    writeln;
    writeln('La cantidad de escuelas en la localidad ',actualLocalidad,' es: ',totalEscuelasLocalidad);   //Informo A
  end;
  writeln;
  writeln('La cantidad de escuelas que participaron en total de la convocatoria es: ',totalEscuelas);       //Informo A parte 2
  //Ahora informo B
  writeln('La escuela con mayor cantidad de alumnos es: ',nombre1,' (DNI de Coordinador -> ',DNI_1,')');
  writeln('La segunda escuela con mayor cantidad de alumnos es: ',nombre2,' (DNI de Coordinador -> ',DNI_2,')');
  readln;
end.
