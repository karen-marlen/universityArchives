program ej6;
const tam = 100;
type
	vector = array[1..tam] of Integer;
procedure maxPosMinPos(v:vector; dimL:Integer; var minPos,maxPos:Integer);
	var max, min, i:Integer;
	begin
	min := 9999999;
	max := -9999999;
		for i:=1 to dimL do
		if v[i] >= max then begin
			max := v[i];
			maxPos := i;
		end;
		if v[i] <= min then begin
			min := v[i];
			minPos := i;
		end;
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
dimL, maxVal, minVal, maxPos, minPos:Integer;
begin
	leerVector(ve, dimL);
	maxPosMinPos(ve, dimL, minPos, maxPos);
	maxVal := ve[maxPos]; {guardo el valor maximo sabiendo la posicion}
	minVal := ve[minPos]; {guardo el valor minimo sabiendo la posicion}
	ve[maxPos] := minVal; {En la posicion del valor maximo, guardo el valor minimo}
	ve[minPos] := maxVal;	{En la posicion del valor minimo, guardo el valor maximo}
	writeln('El elemento maximo ',maxVal , ' que se encontraba en la posicion ', 
		maxPos, ' fue reemplazado por el elemento minimo ', minVal, ' que se encontraba en la posicion ', minPos);
end.
