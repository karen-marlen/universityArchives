{10.Realizar un programa que lea desde teclado números de autos 
de carrera y, para cada uno de los autos, el tiempo total de carrera. 
En la carrera participaron 100 autos. Informar en pantalla:
a.Los autos que finalizaron en los dos primeros puestos.
b.Los autos que finalizaron en los dos últimos puestos.}

program EJ10;
var 
i, num_auto, min_auto1, min_auto2, max_auto1, max_auto2 : integer;
tiempo, min_tiempo1, min_tiempo2, max_tiempo1, max_tiempo2 : real;
begin
	num_auto := 0;
	min_auto1 := 0;
	min_auto2 := 0;
	max_auto1 := 0;
	max_auto2 := 0;
	tiempo := 0;
	min_tiempo1 := 9999;
	min_tiempo2 := 9999;
	max_tiempo1 := 0;
	max_tiempo2 := 0;
	for i:= 0 to 10 do begin
		writeln('Ingrese el numero del auto');
		readln(num_auto);
		writeln('Ingres el tiempo de los autos');
		readln(tiempo);
		if (tiempo < min_tiempo1) then begin
			min_auto2 := min_auto1;
			min_tiempo2 := min_tiempo1;
			min_auto1 := num_auto;
			min_tiempo1 := tiempo;
		end
		else
			if (tiempo < min_tiempo2) then begin
				min_tiempo2 := tiempo;
				min_auto2 := num_auto;
			end;
		if (tiempo > max_tiempo1) then begin
			max_auto2 := max_auto1;
			max_tiempo2 := max_tiempo1;
			max_auto1 := num_auto;
			max_tiempo1 := tiempo;
		end
		else
			if (tiempo > max_tiempo2) then begin
				max_tiempo2 := tiempo;
				max_auto2 := num_auto;
			end;
	end;
	writeln('Los autos que finalizaron en los dos primeros puestos: ', min_auto1, (' y '), min_auto2);
	writeln('Los autos que finalizaron en los dos últimos puestos:  ', max_auto1, (' y '), max_auto2);
end.