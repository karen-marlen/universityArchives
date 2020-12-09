program ejercicio_17;
const
  precio_soja=320;

function calcular(hectareas:double; tipo_zona:integer;precio:double):double;
begin
  if(tipo_zona=1)then
    calcular:=(hectareas*6)*precio
  else
    if(tipo_zona=2)then
      calcular:=(hectareas*2.6)*precio
    else
      if(tipo_zona=3)then
        calcular:=(hectareas*1.4)*precio
      else
        calcular:=-1;
end;

procedure Leer(var localidad:String;var hectareas:double; var tipo_zona:integer);
begin
  write('Ingrese el nombre de la localidad: ');
  readln(localidad);
  write('Ingrese la cantidad de hectareas del campo: ');
  readln(hectareas);
  write('Ingrese el tipo de zona (1: Muy fertil 2: Estandar 3: Arido): ');
  readln(tipo_zona);
end;

var
  localidad:String[50];
  hectareas:double;
  tipo_zona:integer;
  cant_tresFebrero:integer;
  mayor_rendimiento:String[50];
  menor_rendimiento:String[50];
  mayor,menor:double;
  aux:double;
begin
  cant_tresFebrero:=0;
  mayor:=-999;
  menor:=99999999999999;
  repeat
    Leer(localidad,hectareas,tipo_zona);
    if(tipo_zona=1) or (tipo_zona=2) or (tipo_zona=3) then begin
      aux:=calcular(hectareas,tipo_zona,precio_soja);
      if(localidad= 'Tres de Febrero') and (aux>10000) then
        cant_tresFebrero:=cant_tresFebrero+1;
      if(aux>mayor)then begin
        mayor:=aux;
        mayor_rendimiento:=localidad;
      end;
      if(aux<menor)then begin
        menor:=aux;
        menor_rendimiento:=localidad;
      end;
    end
    else
      writeln('Ingrese un codigo de zona valido: ');
  until((localidad='Saladillo') and (hectareas=900));
  writeln('La cantidad de campos en Tres de Febrero con rendimiento superior a 10K es: ',cant_tresFebrero);
  writeln('La localidad del campo con mayor rendimiento economico es: ',mayor_rendimiento,' (',mayor:1:2,')');
  writeln('La localidad del campo con menor rendimiento economico es: ',menor_rendimiento,' (',menor:1:2,')');
  readln;
end.
