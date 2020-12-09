program ej16;
	procedure cumpleA(var cumple:Boolean; var long:Integer);
	var c:char;
	begin
		writeln('Ingrese la secuencia A: ');
		readln(c);
		cumple:= (c <> '$');
		while((c <> '%') and (cumple)) do begin
			long := long + 1;
			readln(c);
			if (c = '$') then
			cumple := false;
		end;
	end;

	procedure cumpleB(var cumple:Boolean; var longA:Integer);
	var
		c:char;
		longB, contador: Integer;
			begin
				longB:=0;
				contador:=0;
				writeln('Ingrese la secuencia B: ');
				readln(c);
				while (c <> '*') do 
					begin
						longB := longB + 1;
						if c = '@' then
							contador:=contador+1;
						readln(c);
					end;
					cumple:= (contador <= 3) and (longB=longA);
			end;




var cumple:Boolean;
c:char;
long:Integer;
begin
	long:=0;
	cumple:= true;
	cumpleA(cumple, long);
	if (cumple) then begin
		writeln('Secuencia A Finalizada con exito');
		cumpleB(cumple, long);
			if (cumple) then
			writeln('Secuencia B Finalizada con exito.')
			else writeln('Error en el patron B.')
	end
	else
	writeln('Error en el patron A.');
		

end.






{A%B*
A --> caracteres not '$'
B --> long(B) = 2*long(A) y maxContador('@') = 3
cumple y longA hay que inicializarlas en main program}