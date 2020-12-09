{Se lee una secuencia de caracteres terminada en “%”. La secuencia 
está dividida en palabras, separadas por uno o más blancos. 
Informar la cantidad de palabras que finaliZan con “S” o “s”}

program Ej_05_05;
var
	cant_s : integer;
	car, ant : char;
begin
	cant_s := 0;
	read(car);
	while(car = ' ') do
		read(car);
	while(car <> '%') do begin
		repeat
			ant := car;
			read(car);
		until(car = ' ') or (car = '%');
		if (ant = 'S') or (ant = 's') then
			cant_s:= cant_s + 1;
		while (car = ' ') do
			read(car);
	end;
	writeln('"S" y "s": ', cant_s);
end.