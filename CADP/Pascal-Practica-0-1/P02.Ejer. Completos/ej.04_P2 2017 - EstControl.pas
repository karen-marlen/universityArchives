{Se lee una secuencia de caracteres terminada en “@”. La secuencia está 
dividida en palabras, separadas por uno o más blancos. Informar 
la cantidad de palabras que empiezan con “T” o “t”.}

program Ej_04;
var
	letra_t : integer;
	letra : char;
begin	
	letra_t := 0;
	writeln('Ingrese la secuencia');
	read(letra);
	while (letra = ' ') do //leo y descarto comas y blancos
	  read(letra);
	while (letra <> '@') do	begin
		if (letra = 't') or (letra = 'T') then //comienza una palabra, me fijo con qué letra empieza
			letra_t := letra_t + 1;
			
		while (letra <> '@') and (letra <> ' ') do //leo el resto de la palabra
			read(letra);
		while (letra = ',') or (letra = ' ') do //leo y descarto comas y blancos
			read(letra);
	end;
	writeln('La contidad de palabras que comienzan con "t" o "T": ',letra_t);
	readln;
end.