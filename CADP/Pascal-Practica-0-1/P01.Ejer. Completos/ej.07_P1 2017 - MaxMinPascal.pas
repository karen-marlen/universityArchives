{7.Realizar un programa que lea números enteros desde teclado.
a lectura debe finalizar cuando se ingresa el número 120, 
el cual debe procesarse. Informar en pantalla cuáles son 
los dos números máximos leídos.}

program EJ7;
var numero, numero1, numero2 : real;
begin
	numero := -1;
	numero1 := -1;
	numero2 := -1;
	writeln('Ingrese un numero');
	readln(numero);
	if (numero <> 120) then begin
			while(numero <> 120) do begin
				if (numero >= numero1) then begin
					numero2 := numero1;
					numero1 := numero;
				end
				else
					if (numero >= numero2) then begin
						numero2 := numero;
					end;
				writeln('Ingrese otro numero');
				readln (numero);
			end;
	end;
	if (numero > numero2) then begin
		numero2 := numero;
	end;
	writeln ('Los numeros mas grandes son: ', numero1:2:2, (' y '), numero2:2:2);
end.