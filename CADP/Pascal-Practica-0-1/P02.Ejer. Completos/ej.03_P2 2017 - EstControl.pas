{3.Se lee una secuencia de caracteres terminada en “!”. 
La secuencia está dividida en palabras, separadas por uno o más blancos. 
Informar:
a.La longitud de la palabra más larga.
b.La longitud de la palabra más corta.
c.La longitud promedio.}

program Ej_2;

var
	car : char;
	contador, sumador, minlong, maxlong, long : integer;
	promedio : real;
begin
	minlong := 9999;
	maxlong := 0;
	contador := 0;
	sumador := 0;
	promedio := 0;
	writeln('Ingrese texto');
	read(car);
	while (car <> '!') do begin
		while (car = ' ') do
			read(car);
		if (car <> ' ') then begin
			long := 0;
			repeat
				long := long+1;
				read(car);
			until (car = ' ') or (car = '!');
			if (long < minlong) then begin
				minlong := long;
			end
			else
				if (long > maxlong) then begin
					maxlong := long;
				end;
		end
		else
			while (car <> ' ') and (car <> '!') do
				read(car);
				contador := long + contador;
				sumador := sumador + 1;
			while (car = ' ') do
				read(car);
	end;
	writeln('Mínima: ', minlong);
	writeln('Maxima: ', maxlong);
	promedio := contador / sumador;
	writeln('Promedio: ', promedio:2:2);
end.