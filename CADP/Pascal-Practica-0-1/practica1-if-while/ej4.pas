program ej4;
var x, doble: Real;

begin
	write('Ingrese un numero: ');
	read(x);
	doble := 2*x;
	while (x <> doble) do
	begin
	writeln('Ingrese un numero: ');
	read(x);
	end;
	writeln('FIN');	
end.