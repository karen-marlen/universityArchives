program adicional2;

var
	vocal1,vocal2,vocal3,vocales,vocales2,vocales3:char;
	i:byte;
	cumplea,cumpleb,cumplec:integer;
	cumple:boolean;
begin
	readln(vocal1); //a
	readln(vocal2); //b
	readln(vocal3); //c
	for i:=97 to 122 do begin
		vocales := chr(i); 
		if( vocales = vocal1 ) then
			cumplea := cumplea + 1;
	end;
	for i:=97 to 122 do begin
		vocales := chr(i); //vocales a
		if( vocales = vocal2 ) then
			cumpleb := cumpleb + 1;
	end;
	for i:=97 to 122 do begin
		vocales := chr(i); //vocales a
		if( vocales = vocal3 ) then
			cumplec := cumplec + 1;
	end;
	if ( cumplea = 1) and (cumpleb = 1) and (cumplec = 1) then
		cumple:=true
	else
		writeln('Al menos una letra no era vocal');
	writeln(cumple);
end.


//Utilizando codigo Ascii
