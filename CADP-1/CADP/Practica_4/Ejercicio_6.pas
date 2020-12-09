program ejercicio_6;
type
  cadena=string[50];
  microprocesador=record
    marca:cadena;
    linea:cadena;
    cantidad_cores:integer;
    velocidad_reloj:double;
    tamanio:integer;
  end;

procedure calcularPuntoA(reg:microprocesador);   //marca y linea de proce. mas de 2 cores con transistores de a lo sumo 22mm
begin
  if(reg.cantidad_cores>2) and (reg.tamanio<=22) then
    writeln('El procesador de marca ',reg.marca,' y linea ',reg.linea,' cumple la condicion del punto A');
end;

procedure calcularPuntoB(reg:microprocesador;var max_marca1,max_marca2:cadena;var max_cant1,max_cant2:integer);  // dos marcas con mayor cant. de procesadores con transistores de 14nn
begin
  if(reg.tamanio=14) and (reg.cantidad_cores>max_cant1)then begin
    max_cant2:=max_cant1;
    max_marca2:=max_marca1;
    max_cant1:=reg.cantidad_cores;
    max_marca1:=reg.marca;
  end
  else
    if(reg.tamanio=14) and (reg.cantidad_cores>max_cant2)then begin
      max_cant2:=reg.cantidad_cores;
      max_marca2:=reg.marca;
    end;
end;

procedure calcularPuntoC(reg:microprocesador;var cantidad:integer); //cant procesadores multicore de INTEL o AMD con reloj con velocidad de al menos 2Ghz
begin
  if((reg.marca='Intel') or (reg.marca='AMD') and (reg.velocidad_reloj>=2))then
    cantidad:=cantidad+1;
end;

procedure Leer(var reg:microprocesador);
begin
  write('Ingrese la marca del microprocesador: ');
  readln(reg.marca);
  write('Ingrese cantidad de cores del microprocesador: ');
  readln(reg.cantidad_cores);
  if(reg.cantidad_cores<>0) then begin
    write('Ingrese la linea del microprocesador: ');
    readln(reg.linea);
    write('Ingrese la velocidad de reloj del microprocesador: ');
    readln(reg.velocidad_reloj);
    write('Ingrese el tamanio del microprocesador: ');
    readln(reg.tamanio);
  end;
end;

var
  reg:microprocesador;
  max_marca1:cadena;
  max_marca2:cadena;
  max_cant1:integer;
  max_cant2:integer;
  cantidad:integer;
  actual:cadena;
begin
  max_marca1:=' ';
  max_marca2:=' ';
  max_cant1:=-999;
  max_cant2:=-999;
  cantidad:=0;
  Leer(reg);
  while(reg.cantidad_Cores<>0)do begin
    actual:=reg.marca;
    while(reg.marca=actual)do begin
      calcularPuntoA(reg);
      calcularPuntoB(reg,max_marca1,max_marca2,max_cant1,max_cant2);
      calcularPuntoC(reg,cantidad);
      Leer(reg);
    end;
  end;
  writeln('La marca con mayor cantidad de procesadores con transistores de 14nn es ',max_marca1,' (',max_cant1,')');
  writeln('La segunda marca con mayor cantidad de procesadores con transistores de 14nn es ',max_marca2,' (',max_cant2,')');
  writeln('La cantidad de procesadores multicore de INTEL o AMD con velocidad de reloj de al menos 2Ghz es: ',cantidad);
  readln;
end.
