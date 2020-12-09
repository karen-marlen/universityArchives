{4.Realizar un programa que lea números enteros desde teclado. 
La lectura debe finalizar cuando se 
ingrese el número 100, el cual debe procesarse. Informar en pantalla:
a.El número máximo leído.
b.El número mínimo leído.
c.La suma total de los números leídos.}

program EJ4;
var
suma, num_max, num_min, numero: integer;
begin
	suma := 100;
	numero := 0;
	num_min := 10000;
	num_max := -1;
	writeln('Ingrese un numero');
	readln(numero);
	while(numero <> 100) do begin
		suma := suma + numero;
		if (numero <= num_min ) then begin
			num_min := numero
		end;
		if (numero >= num_max) then begin
			num_max := numero;
		end;	
		writeln('Ingrese otro numero');
		readln(numero);
	end;
	writeln('El número máximo leído es: ', num_max);
	writeln('El número mínimo leído es: ', num_min);
	writeln('La suma total de los número leído es: ', suma);
	readln;
end.
