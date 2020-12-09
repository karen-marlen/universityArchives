program ej6;
	var 
	codigo_segundo_min, codigo_min, mayores_a_16, codigo, i: Integer;
	segundo_minimo, minimo, precio: Real;
	
	
begin
mayores_a_16 := 0;
	for i:=1 to 200 do begin
		writeln('Inserte codigo: ');
		read(codigo);
		writeln('Inserte precio: ');
		read(precio);
		if (i=1) then 
		begin
			minimo := precio;
			codigo_min := codigo;
		end;
		if (precio < minimo) then
		begin
			codigo_segundo_min := codigo_min;
			codigo_min := codigo;
			segundo_minimo := minimo;
			minimo := precio;
		end;
		if((precio > minimo) and (precio < segundo_minimo)) then
		begin
			codigo_segundo_min:= codigo;
			segundo_minimo:= precio;
		end;
		if ((precio > 16) and ((codigo mod 2) = 0)) then
		mayores_a_16 := mayores_a_16 + 1;

	end;
	writeln('Los codigos de los dos productos mas baratos son ', codigo_min, ' y ', codigo_segundo_min);
	writeln('La cantidad de productos mayores a 16 p con codigo par es de ', mayores_a_16);
end.