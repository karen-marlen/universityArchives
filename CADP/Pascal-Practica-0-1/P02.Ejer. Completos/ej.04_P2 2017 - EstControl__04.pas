{Se lee una secuencia de caracteres terminada en “@”. La secuencia está 
dividida en palabras, separadas por uno o más blancos. Informar 
la cantidad de palabras que empiezan con “T” o “t”.}

program Ej_04_04;
var 
	cont_t : integer;
	car,ant : char;
begin
	cont_t := 0;
	read(car);
	while(car = ' ') do
		read(car);
	while(car <> '@') do begin
		if (car = 'T') or (car = 't') then
			cont_t := cont_t + 1;
		while (car <> ' ') and (car <> '@') do
			read(car);
		while (car = ' ') do
			read(car);
	end;
	writeln('“T” y "t"', cont_t);
end.