{2. Se lee una secuencia de caracteres terminada en “.”.
La secuencia está dividida en palabras, separadas por uno o más blancos. 
Informar la cantidad de palabras.}

program EJ_02_02;
var
	car : char;
	pal : integer;
begin
	pal := 0;
	read(car);
	while(car = ' ') do
		read(car);
	while(car <> '.') do begin
		pal := pal + 1;
		while(car <> '.') and (car <> ' ') do 
			read(car);
		while(car = ' ') do
			read(car);
	end;
	writeln('Palabras: ', pal);
end.