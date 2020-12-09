program ej15;
	function esVocal(c:char): Boolean;
	begin
		esVocal:=(c = 'a') or (c = 'e') or (c = 'i') or (c = 'o') or (c = 'u');
	end;

	function letraNoVocal(c:char): Boolean;
	begin
		letraNoVocal:= not ((c = 'a') or (c = 'e') or (c = 'i') or (c = 'o') or (c = 'u'));
	end;

	procedure cumpleA(var cumple:Boolean); 
	var c:char;
	begin
	writeln('Ingrese una vocal: ');
	readln(c);
	while(c <> '$') and (cumple) do begin
			if (not esVocal(c)) then
				cumple := false
			else
				readln(c);			
		end;
	end;

	procedure cumpleB(var cumple:Boolean);
	var c:char;
	begin
	writeln('Ingrese una letra no vocal: ');
	readln(c);
	while((c <> '#') and (cumple)) do begin
		if (not letraNoVocal(c)) then
		cumple:=false
		else
		readln(c);
	end;
		
	end;


var cumple:Boolean;
c:char;
begin
cumple:=true;
cumpleA(cumple);
if cumple then begin
	cumpleB(cumple);
	if cumple then 
		writeln('Secuencia ingresada correctamente')
	else writeln('el caracter ingresado fue invalido.')
end
else
	writeln('El caracter ingresado no fue invalido.')
end.