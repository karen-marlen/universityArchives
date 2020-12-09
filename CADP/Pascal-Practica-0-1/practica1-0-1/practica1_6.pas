program ejercicio6;
	
var
	caracter:char;
	cantZ,cantZ2,vocal,cantC,porce:integer;
	subse,subse2 : boolean;
begin
	readln(caracter);
	while (caracter <> '*') do begin
		if(caracter = 'z' ) then 
			cantZ := cantZ + 1;
		if (caracter = 'Z') then
			cantZ2 := cantZ2 + 1;
		if ( ( caracter = 'a') or  ( caracter = 'e') or  ( caracter = 'i')  or  ( caracter = 'o')  or  ( caracter = 'u') ) then
			vocal := vocal + 1;
		if (caracter = 'a') then
			subse := true;
		if(subse = true) and ( caracter = 'b') then
			subse2 := true;
		cantC := cantC + 1;
		readln(caracter);
	end;
	porce := vocal*100 div cantC;
	writeln('La cantidad de Z es: ' , cantZ);
	writeln('La cantidad de z es: ' , cantZ2);
	writeln('El procentaje de vocales leidas es: ' , porce, 'por ciento');
	writeln(subse2);
end.
