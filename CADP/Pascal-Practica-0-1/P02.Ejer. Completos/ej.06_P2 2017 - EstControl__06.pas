{Se lee una secuencia de caracteres terminada en “*”. 
La secuencia está dividida en oraciones que finalizan en “.”. 
Las oraciones están divididas en palabras. 
Las palabras pueden estar separadas por uno o más blancos. Informar:
La cantidad total de oraciones leídas.
La cantidad de palabras por oración.}

program Ej_06_06;
var
	ora, pal : integer;
	car, ant : char;
begin
	ora := 0;
	read(car);
	while(car <> '*') do begin
		pal := 0;
		while (car <> '.') and (car <> '*') do begin
				while(car = ' ') do
					read(car);
				if( car <> '.') then
					pal := pal + 1;
				while (car <> ' ')	and (car <> '.') do
						read(car);
				while(car = ' ') and (car <> '*') do
						read(car);
		end;
		ora := ora + 1;
		writeln('pal ', pal);
		while (car <> '*') and (car <> ' ') do 
        	read(car);
        while(car = ' ') do 
        	read(car);
	end;
	writeln('ora', ora);
end.