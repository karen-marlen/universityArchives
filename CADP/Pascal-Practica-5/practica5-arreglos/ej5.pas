program ej4;
const tam = 100;
type
	vector = array[1..tam] of Integer;


{function posicion(v:vector; x:Integer): Integer;
var no_encontro:Boolean;
pos:Integer;
begin
	pos:=1;
	no_encontro := true;

	while ((no_encontro) and (pos <= tam)) do begin
		if v[pos] = x then begin
			no_encontro := false;
		end
		else pos := pos + 1;
	end;

	if no_encontro then
	pos := -1;
	posicion := pos;
end;}

function posicion(v:vector; x:Integer):Integer;
var i:Integer;
begin
	for i:=1 to tam do
		if v[i] = x then
			posicion := i;
	posicion := -1;
end;

procedure intercambio(var v:vector; x,y:Integer);
	var y2: Integer;
	begin
		y2:= v[x];
		v[x] := v[y];
		v[y] := y2;
	end;

function suma(v:vector):Integer;
var i,total:Integer;
begin
	total := 0;
	for i:=1 to tam do
		total := total + v[i];
	suma := total;
end;

function promedio(v:vector):real;
var i, total:Integer;
begin
	total := 0;
	for i:=1 to tam do
		total := total + v[i];
	promedio := total/tam;
end;

function elementoMaximo(v:vector; dimL:Integer):integer;
var i,max, posMax:integer;
begin
     max := -9999;
     for i:=1 to dimL do
     if (v[i] >= max) then begin
        max := v[i];
        posMax := i;
        end;
     elementoMaximo := posMax;
end;



function elementoMinimo(v:vector; dimL:integer):integer;
var i,min, posMin:integer;
begin
     min := 999999;
     for i:=1 to dimL do
     if (v[i] <= min) then begin     	
        min := v[i];
        posMin := i;
     end;
     elementoMinimo := posMin;
end;

procedure leerVector(var v:vector; var dimL:Integer);
	var num:Integer;
	begin
	dimL := 0;
	writeln('Ingrese la secuencia de numeros, o 0 para finalizar.');
	readln(num);
		while ((num <> 0) and (dimL < 100)) do begin
			dimL := dimL + 1;
			v[dimL] := num;
			readln(num);
		end;
	end;

var 
ve:vector;
dimL, maxVal, minVal, maxPos1, minPos1:Integer;
begin
	leerVector(ve, dimL);
	maxPos1 := elementoMaximo(ve,dimL);
	minPos1 := elementoMinimo(ve,dimL);
	maxVal := ve[maxPos1]; {guardo el valor maximo sabiendo la posicion}
	minVal := ve[minPos1]; {guardo el valor minimo sabiendo la posicion}
	ve[maxPos1] := minVal; {En la posicion del valor maximo, guardo el valor minimo}
	ve[minPos1] := maxVal;	{En la posicion del valor minimo, guardo el valor maximo}
	writeln('El elemento maximo ',maxVal , ' que se encontraba en la posicion ', 
		maxPos1, ' fue reemplazado por el elemento minimo ', minVal, ' que se encontraba en la posicion ', minPos1);
end.
