program ejercicio7;
var
	nombreP,primerP,segundoP,anteUltimo,ultimo:string;
	tiempo,min,min2,max,max2:real;
	i:integer;
begin
	min:=-32767;
	min2:=-32767;
	max:=32767;
	max2:=32767;
	for i := 1 to 4 do begin
		writeln('Ingrese el nombre del piloto');
		readln(nombreP);
		writeln('Ingrese el tiempo que tardo en realizar la carrera');
		readln(tiempo);
		if(tiempo < max) then begin
			max2:=max;
			primerP:=segundoP;
			max:=tiempo;
			primerP:=nombreP;
		end
		else
			if(tiempo < max2) then begin
				max2:=tiempo;
				segundoP:=nombreP;
			end;
		
		if (tiempo > min ) then begin
			min2:=min;
			anteUltimo:=ultimo;
			min:=tiempo;
			ultimo:=nombreP;
		end
		else
			if(tiempo > min2) then begin
				min2:=tiempo;
				anteUltimo:=nombreP;
			end;
	end;
	writeln('El primer piloto es: ',primerP, ' El segundo piloto es: ',segundoP);
	writeln('El ultimo piloto es: ',ultimo, 'El ante ultimo piloto es: ',anteUltimo);
end.
