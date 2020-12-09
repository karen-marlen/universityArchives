program ejercicio9;


procedure procesar (numero:integer;var cant,suma:integer);
	var
		dig:integer;
	begin
		while (numero <> 0 )do begin
			dig:= numero mod 10;
			cant := cant+1;
			numero:=numero div 10;
			suma:= suma+dig;
		end;
	end;

var
	numero,cant,suma:integer;
begin
	suma:=0;
	writeln('Ingerse un numero entero');
	repeat
		readln(numero);
		suma:=0;
		cant:=0;
		procesar(numero,cant,suma);
		writeln('La cantidad de digitos es: ',cant, ' La suma de los digitos es: ',suma);
	until ( suma = 10);
end.
