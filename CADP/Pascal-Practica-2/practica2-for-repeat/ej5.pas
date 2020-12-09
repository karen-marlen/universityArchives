program ej5;
var
	maximo, minimo, total, num: Integer;
begin
	total:= 0;
	maximo:=-1;
	minimo:=32767;
	repeat
	read(num);
		total:= total + 1;
		if (num > maximo) then maximo := num;
		if (num < minimo) then minimo := num;
	until (num = 100);
	writeln('Maximo ', maximo);
	writeln('Minimo ', minimo);
	writeln('Total leidos, ', total);
end.