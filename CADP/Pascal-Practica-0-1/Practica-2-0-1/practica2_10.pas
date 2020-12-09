program ejercicio10;



procedure procesarNumero (numero:integer);
	var
		SumaPar,digitosImp,digM:integer;
	begin
		SumaPar:=0;
		digitosImp:=0;
		digM:=0;
		while (numero <> 0) do begin
			digM := numero mod 10;
			if ( digM mod 2 = 0) then
				SumaPar:= sumaPar + digM
			else
				digitosImp := digitosImp + 1;
			numero := numero div 10;
		end;
		writeln('la suma de los digitos pares es: ',SumaPar);
		writeln('La cantidad de digitos impares es: ',digitosImp);
	end;


var
	numero:integer;
begin
	writeln('Ingrese un numero');
	readln(numero);
	procesarNumero(numero);
	while (numero <> 12345) do begin //32767
		readln(numero);
		procesarNumero(numero);
	end;
end.
