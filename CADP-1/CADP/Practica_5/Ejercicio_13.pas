program ejercicio_13;
const
  dimF=1990;
  cantPuntos=5;
type
  puntos = array[1..cantPuntos] of double;   //Los puntos/zonas diferentes del planeta (para ver la comprobacion bajamos de 100 puntos a 5)
  anios = array[1980..dimF] of puntos;  //El periodo donde se realiza el estudio (Lo dejamos en 10 datos);

procedure  cargarVector(var vec: anios);
var
  i:integer;
  j:integer;
begin
  for i:=1980 to dimF do begin
    writeln('Año: ', i);
    for j:= 1 to cantPuntos do begin
      writeln('Ingrese la temperatura de la zona: ');
      readln(vec[i][j]);  // Vec[I] es un arreglo de tipo "puntos", es decir, es un arreglo de otro arreglo donde este ultimo (el arreglo de puntos) almacena datos de tipo REAL correspondiente a la temperatura.
    end;
  end;
end;

procedure calcularPromedio(vecPuntos:puntos;var promedio,tempMasAlta: double);
var
   i: integer;
   sumaTemperatura: double;
begin
  tempMasAlta:= -999;
  sumaTemperatura:= 0;
  for i:=1 to cantPuntos do begin  //Para todas las zonas/puntos de ese año
    if (vecPuntos[i] > tempMasAlta) then
      tempMasAlta:= vecPuntos[i];
    sumaTemperatura:= sumaTemperatura + vecPuntos[i];
  end;
  promedio:= sumaTemperatura / cantPuntos;
end;

procedure calcular(vec: anios; var anioConPromedioMasAlto, anioConTempMasAlta: integer );
var
  i: integer;
  maxPromedio,promedio:double;
  tempMasAlta,maxTemperatura: double;
begin
  maxPromedio:= -999;
  maxTemperatura:=-999;
  for i:= 1980 to dimF do begin
    calcularPromedio(vec[i],promedio,tempMasAlta);  //Devuelve el promedio y si la temperatura de algunas de esas zonas de ese año es mas alta que el maximo actualiza el max y lo devuelve
    if (promedio > maxPromedio) then begin
      maxPromedio:= promedio;
      anioConPromedioMasAlto:= i;
    end;
    if (tempMasAlta > maxTemperatura) then begin
      maxTemperatura:= tempMasAlta;
      anioConTempMasAlta:= i;
    end;
  end;
end;

var
  vec: anios;
  maxAnio:integer;
  anioConTempMasAlta: integer;
begin
  maxAnio:= 999;
  anioConTempMasAlta:= 999;
  cargarVector(vec); //En realidad carga una matriz
  calcular(vec, maxAnio, anioConTempMasAlta);
  writeln('El año con mayor temperatura promedio a nivel mundial fue: ', maxAnio);
  writeln('El año con la mayor temperatura detectada en el periodo analizado fue: ', anioConTempMasAlta);
  readln;
end.
