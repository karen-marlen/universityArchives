program ej7;
	var precio_actual, nuevo_precio, porcentaje: Real;
	codigo: Integer;
begin
	precio_actual := 0; {para que no tire error el porcentaje}
	nuevo_precio := 0;
	codigo:=0; 
	while (codigo <> 32767) do
		begin
			writeln('Ingrese codigo, precio_actual y nuevo_precio:');
			read(codigo, precio_actual, nuevo_precio);
			porcentaje := nuevo_precio*100/precio_actual - 100;
			if (porcentaje > 10) then
			writeln('el aumento de precio del producto ', codigo, ' supera el 10%')
			else 
			writeln('el aumento de precio del producto ', codigo, ' no supera el 10%');
		end;
end.