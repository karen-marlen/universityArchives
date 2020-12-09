program ejercicio_12;
const
  dimF=4; //Un valor aceptable para testear :)
type
  cadena=string[70];
  galaxia=record
    nombre:cadena;
    tipo:1..4;
    masa:double;
    distancia:double;
  end;
  vector=array[1..dimF]of galaxia;
  vectorContador=array[1..4]of integer;

procedure InicializarVector(var vecContador:vectorContador);
var
  i:integer;
begin
  for i:=1 to 4 do
    vecContador[i]:=0;
end;

procedure Leer(var reg:galaxia);
begin
  write('Ingrese el nombre: ');
  readln(reg.nombre);
  write('Ingrese el tipo de galaxia (1: Eliptica 2: Espiral 3: Lenticular 4: Irregular): ');
  readln(reg.tipo);
  write('Ingrese la masa (medida en kg) de la galaxia: ');
  readln(reg.masa);
  write('Ingrese la distancia (en parsecs) medida desde la Tierra: ');
  readln(reg.distancia);
end;

procedure cargarVector(var vec:vector;var dimL:integer);
var
  reg:galaxia;
begin
  dimL:=0;
  writeln('Ingrese los datos de las galaxias: ');
  Leer(reg);
  while(dimL<dimF) do begin
    dimL:=dimL + 1;
    vec[dimL]:=reg;
    Leer(reg);
  end;
end;

procedure calcularTipoGalaxias(tipo:integer;var vecContador:vectorContador);
begin
  vecContador[tipo]:=vecContador[tipo]+1;
end;

procedure calcularMasaTotal(nombre:cadena;masa:double;var masaTotal:double;var masaGalaxiasCondicion:double);
begin
  if(nombre='Via Lactea') or (nombre='Andromeda') or (nombre='Triangulo')then
    masaGalaxiasCondicion:=masaGalaxiasCondicion+ masa;
  masaTotal:=masaTotal + masa;
end;

procedure calcularCantGalaxiasCondicion(var cantGalaxias:integer;tipo:integer;distancia:double);
begin
  if(tipo <> 4) and (distancia<1000) then
    cantGalaxias:=cantGalaxias + 1;
end;

procedure calcularMayores_Menores(vec:vector;i:integer;var maxGalaxia1,maxGalaxia2:cadena;var maxMasa1,maxMasa2:double; var minGalaxia1,minGalaxia2:cadena;var minMasa1,minMasa2:double);
begin
  if(vec[i].masa>maxMasa1)then begin
    maxMasa2:=maxMasa1;
    maxGalaxia2:=maxGalaxia1;
    maxMasa1:=vec[i].masa;
    maxGalaxia1:=vec[i].nombre;
  end
  else
    if(vec[i].masa>maxMasa2)then begin
      maxMasa2:=vec[i].masa;
      maxGalaxia2:=vec[i].nombre;
    end;
  if(vec[i].masa<minMasa1) then begin
    minMasa2:=minMasa1;
    minGalaxia2:=minGalaxia1;
    minMasa1:=vec[i].masa;
    minGalaxia1:=vec[i].nombre;
  end
  else
    if(vec[i].masa<minMasa2)then begin
      minMasa2:=vec[i].masa;
      minGalaxia2:=vec[i].nombre;
    end;
end;

procedure Calcular(vec:vector;vecContador:vectorContador;dimL:integer); //Para recorrer una sola vez
var
  i:integer;
  {Punto 2}
  masaTotal:double;
  porcentaje:double;
  masaGalaxiasCondicion:double;
  {Punto 3}
  cantGalaxias:integer;
  {Punto 4}
  maxGalaxia1:cadena;
  maxGalaxia2:cadena;
  maxMasa1:double;
  maxMasa2:double;
  MinGalaxia1:cadena;
  minGalaxia2:cadena;
  minMasa1:double;
  minMasa2:double;
begin
  masaTotal:=0;
  masaGalaxiasCondicion:=0;
  cantGalaxias:=0;
  maxGalaxia1:=' ';
  maxGalaxia2:=' ';
  maxMasa1:=-999;
  maxMasa2:=-999;
  minGalaxia1:=' ';
  minGalaxia2:=' ';
  minMasa1:=99999;
  minMasa2:=99999;
  for i:=1 to dimL do begin
    calcularTipoGalaxias(vec[i].tipo,vecContador);
    calcularMasaTotal(vec[i].nombre,vec[i].masa,masaTotal,masaGalaxiasCondicion);
    calcularCantGalaxiasCondicion(cantGalaxias,vec[i].tipo,vec[i].distancia);
    calcularMayores_Menores(vec,i,maxGalaxia1,maxGalaxia2,maxMasa1,maxMasa2,minGalaxia1,minGalaxia2,minMasa1,minMasa2);
  end;
  for i:=1 to 4 do
    writeln('La cantidad de galaxias de tipo ',i,' es: ',vecContador[i]);
  porcentaje:= (masaGalaxiasCondicion*100)/masaTotal;
  writeln('La masa total acumulada de las 3 galaxias principales es ',masaGalaxiasCondicion:1:2,' y representa el ',porcentaje:1:2, '% respecto a la masa de todas las galaxias (',masaTotal:1:2,')');
  writeln('La cantidad de galaxias no irregulares que se encuentran a menos de 1000pc es: ',cantGalaxias);
  writeln('La galaxia con mayor masa es: ',maxGalaxia1,' (Masa: ',maxMasa1:1:2,')');
  writeln('La segunda galaxia con mayor masa es: ',maxGalaxia2,' (Masa: ',maxMasa2:1:2,')');
  writeln('La galaxia con menor masa es: ',minGalaxia1,' (Masa: ',minMasa1:1:2,')');
  writeln('La segunda galaxia con menor masa es: ',minGalaxia2,' (Masa: ',minMasa2:1:2,')');
end;

var
  vec:vector;
  vecContador:vectorContador;
  dimL:integer;
begin
  InicializarVector(vecContador);
  cargarVector(vec,dimL);
  calcular(vec,vecContador,dimL);
  readln;
end.

