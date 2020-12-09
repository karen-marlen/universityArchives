{8.Realizar un programa para administrar información de sitios 
turísticos. Para ello se leen desde teclado 500 números que 
representan la distancia en kilómetros desde La Plata a una 
ciudad turística y el código de la ciudad a la que pertenece 
dicha distancia. Informar en pantalla los códigos de las dos 
ciudades más lejanas a La Plata.}

program EJ8;
var km, km_1, km_2 : real;
	i, codigo, codigo_1, codigo_2 : integer;
begin
	km := 0;
	km_1 := 0;
	km_2 := 0;
	codigo := 0;
	codigo_1 := 0;
	codigo_2 := 0;
	for i:=0 to 5 do begin
		writeln('Ingrese codigo de la ciudad');
		readln(codigo);
		writeln('Ingrese en distancia en Km a la ciudad');
		readln(km);
		if(km >= km_1) then begin
			codigo_2 := codigo_1;
			km_2 := km_1;
			km_1 := km;
			codigo_1 := codigo;
		end
		else
			if(km > km_2) then begin
				km_2 := km;
				codigo_2 := codigo;
			end;
	end;
	writeln ('El codigo de las ciudades mas lejanas a la plata son :', codigo_1, (' y '), codigo_2);
end.