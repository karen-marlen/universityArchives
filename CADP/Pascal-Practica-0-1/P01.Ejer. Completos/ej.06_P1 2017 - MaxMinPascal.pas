{6.Realizar un programa que lea 1000 números enteros desde teclado. 
Informar en pantalla cuáles son los dos números mínimos leídos.}

program EJ06;
var
	numero, num_min, num_min_2, i : integer;
begin
	numero := 0;
	num_min := 10000;
	num_min_2 := 10000;
	for i:=1 to 10 do begin
		writeln('Ingrese numero');
		readln(numero);
		if (numero <= num_min) then begin
			num_min := numero;
		end
		else
			if (numero <= num_min_2) then begin
				num_min_2 := numero;
			end;
	end;	
		writeln ('Los dos numeros minimos leidos son: ', num_min, (' y '), num_min_2);
		readln
end.