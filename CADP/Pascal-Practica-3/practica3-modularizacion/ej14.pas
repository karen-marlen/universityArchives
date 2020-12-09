program ej14;
	procedure masBaratos(codigo:Integer; precio:Real; 
		var c_min1:Integer; var c_min2:Integer; 
		var p_min1:Real; var p_min2:Real);
	begin
		if precio <= p_min1 then
		begin
			p_min2 := p_min1;
			c_min2 := c_min1;
			p_min1 := precio;
			c_min1 := codigo;
		end
		else if precio <= p_min2 then
		begin
		p_min2 := precio;
		c_min2 := codigo;
		end;
	end;
	procedure leerProducto(var codigo: Integer; var precio:Real);
	begin
		writeln('Escriba el codigo del producto: ');
		readln(codigo);
		writeln('Escriba el precio del producto: ');
		readln(precio);
	end;
	procedure mayoresPares(codigo:Integer; precio:Real; var cantidadMayores:Integer);
	begin
		if (precio > 16) and (codigo MOD 2 = 0) then 
		cantidadMayores:= cantidadMayores + 1;
	end;

var codigo, i,codigo_min1, codigo_min2, cantidadMayores:Integer;	
		precio, precio_min1, precio_min2:Real;
begin
	precio_min1:=32767;
	precio_min2:=32767;
	cantidadMayores:=0;
	for i:=1 to 5 do begin
		leerProducto(codigo, precio);
		masBaratos(codigo, precio, codigo_min1, codigo_min2, precio_min1, precio_min2);
		mayoresPares(codigo, precio, cantidadMayores);
	end;
	writeln('Los codigos de los dos productos mas baratos fueron: ', codigo_min1, 
		' de ', precio_min1:4:2, ' pesos, y ', codigo_min2, ' de ', precio_min2:4:2, ' pesos.');
	writeln('Hubo ', cantidadMayores, ' productos mayores a 16 pesos con codigo par.');
end.
