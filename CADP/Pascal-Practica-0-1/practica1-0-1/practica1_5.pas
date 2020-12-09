program numeros;
var
	legajo,cantAlu,promedioM,PromedioD:integer;
	promedio,porcentaje:real;
begin
	readln(legajo);
	readln(promedio);
	while (legajo <> -1) do begin
		cantAlu:= cantAlu + 1;
		if( promedio > 6.5)then
			promedioM:= promedioM + 1;
		if ( promedio > 8.5) and (legajo < 2500) then begin
			promedioD := promedioD + 1;
			porcentaje := cantAlu * promedioD / 100; 
		end;
		readln(legajo);
		readln(promedio);
	end;
	writeln('La cantidad de alumnos leidos es: ' ,cantAlu);
	writeln('LA cantidad de alumnos con promedio que supera los 6.5 es: ' ,promedioM);
	writeln('el porcentaje de alumnos destacados es: ',porcentaje :2:2);
end.
