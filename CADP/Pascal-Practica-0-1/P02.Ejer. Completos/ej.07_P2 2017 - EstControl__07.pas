{Se lee una secuencia de caracteres terminada en “?”. 
La secuencia está dividida en oraciones que finalizan en “.”. 
Las oraciones están divididas en palabras. Las palabras pueden estar 
separadas por uno o más blancos. Informar:
El porcentaje de oraciones leídas que comienzan con “L”.
La cantidad de palabras por oración que finalizan en “!”.
La cantidad total de palabras que empiezan con “P” y finalizan con “R”.}

program libre_pepito;
var
	car, ant_I, ant_L, ant_P, ant_R : char;
	com_L, fin_I, pal_PR : integer;
begin
	com_L:= 0;

	read(car);
	while (car <> '?') do begin
		fin_I := 0;
		while (car <> '.') and (car <> '?') do begin
				if (car = 'L') then
					com_L := com_L + 1;
				repeat
					ant_I := car;
					read(car);
				until(car = ' ') or (car = '?');
				if (ant_I = '!') then
					fin_I := fin_I + 1;
				writeln('caracteres !: ', fin_I);
		end;			
		while (car <> '?') and (car <> ' ') do 
        	read(car);
        while(car = ' ') do 
        	read(car);
	end;
	writeln('oraciones “L”', com_L);
end.	