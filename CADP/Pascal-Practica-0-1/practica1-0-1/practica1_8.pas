program ejercicio7;
var
	clientes,dni,dnipar,gomez,hernandez,porcentaje:integer;
	apellido,nombre:string [20];
	pedro:boolean;
begin
	clientes:=0;
	writeln('Ingrese DNI');
	readln(dni); //primera
	while (dni <> -1) and (clientes < 1000) do begin
		writeln('Ingrese apellido');
		readln(apellido);
		if(apellido = 'Gomez') then
			gomez := gomez + 1;
		if(apellido = 'Hernandez') then begin
			if(dni mod 2 = 0) then
				hernandez:=hernandez+1;
			end;
		writeln('Ingrese el nombre');
		readln(nombre);
		if(nombre = 'Pedro') then
			pedro:=true;
		writeln('Ingrese el dni');
		readln(dni); //segunda
		clientes:=clientes+1;
	end;
	porcentaje:= (hernandez*100) div clientes;
	writeln('Hay algun cliente llamado pedro ' ,pedro);
	writeln('La cantidad de clientes con apellido gomez son: ' ,gomez);
	writeln(' el porcentaje de apellido hernandez con dni par es: ',porcentaje);
end.
