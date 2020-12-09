{3.Se lee una secuencia de caracteres terminada en “!”. 
La secuencia está dividida en palabras, separadas por uno o más blancos. 
Informar:
a.La longitud de la palabra más larga.
b.La longitud de la palabra más corta.
c.La longitud promedio.}

program Ej_03_03;
var
	lon_min, lon_max, long, long_tot, palabra : integer;
	promedio : real;
	car : char;
begin
	lon_max := 0;
	lon_min := 999;
	long_tot := 0;
	palabra := 0;
	read(car);
	while(car = ' ') do
		read(car);
	while(car <> '!') do begin
		long := 0;
		repeat
			long := long + 1;
			read(car);
		until(car = ' ') or (car = '!');
		palabra := palabra + 1;
		long_tot := long + long_tot;
		if (long < lon_min) then begin
			lon_min := long;
		end
		else
			if(long > lon_max) then
				lon_max := long;
		while (car <> ' ') and (car <> '!') do
			read(car);
		while (car = ' ') do
			read(car);
	end;
	writeln('lon_min', lon_min);
	writeln('lon_max', lon_max);
	promedio := long_tot / palabra;
	writeln('promedio', promedio:2:2);
end.