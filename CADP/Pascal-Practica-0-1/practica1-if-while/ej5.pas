program ej5;
	var 
	x, doble: Real;
	i: Integer;
begin
	write('Ingrese un numero X: ');
	read(x);
	doble := 2*x;
	i := 1;
	while ((x <> doble) and (i<=10)) do
	begin
	i := i + 1;
	writeln('Ingrese un numero: ');
	read(x);
	end;
	if (x <> doble) then
	write('No se ha ingresado el doble de X');
	writeln('FIN');	
end.