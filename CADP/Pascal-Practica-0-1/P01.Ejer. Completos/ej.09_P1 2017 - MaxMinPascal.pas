{9.Realizar un programa que lea información de productos de 
un supermercado. Se lee de cada producto su código, precio y 
código de categoría. La lectura finaliza cuando se lee el código 
de producto -1, el cual no debe procesarse. Informar en Pantalla:
a.Los códigos de los dos productos más baratos.
b.La cantidad de productos de más de 16 pesos que 
no pertenecen a la categoría 14.}

program EJ9;
var 
codigo, codigo_1, codigo_2, suma: integer;
precio, precio_1, precio_2: real;
begin
	codigo := 0;
	codigo_1 := 0;
	codigo_2 := 0;
	suma := 0;
	precio := 9999;
	precio_1 := 9999;
	precio_2 := 9999;
	writeln('Ingrese Codigo de Categoria');
	readln(codigo);
	while (codigo <> -1) do begin
		writeln('Ingrese Precio del producto');
		readln(precio);
		if (precio < precio_1) then begin
			codigo_2 := codigo_1;
			precio_2 := precio;
			precio_1 := precio;
			codigo_1 := codigo;
			end
			else
			if (precio < precio_2) then begin
				precio_2 := precio;
				codigo_2 := codigo;
			end;
		if(precio > 16) and (codigo <> 14) then begin
			suma := suma + 1;
		end;
		writeln('Ingrese Codigo del producto');
		readln(codigo);
	end;	
	writeln ('Los dos productos mas baratos son: ', codigo_1, (' y '), codigo_2);
	writeln ('La cantidad de productos con precio mayor a 16 pesos: ', suma)
end.