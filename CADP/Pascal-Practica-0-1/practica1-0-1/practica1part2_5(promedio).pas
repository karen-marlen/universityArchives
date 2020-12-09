program ejercicio5;
var
	codigo,codigomin1,codigomin2,mas16,i:integer;
	precio,min1,min2,promedio:real;
begin
	min1:=32767;
	min2:=32767;
	promedio :=0;
	for i := 1 to 6 do begin
		readln(codigo);
		readln(precio);
		promedio:= promedio + precio;
		if ( precio < min1) then begin
			min2:=min1;
			codigomin2:=codigomin1;
			min1:=precio;
			codigomin1:=codigo;
		end
		else
			if(precio < min2) then begin
				min2:=precio;
				codigomin2:=codigo;
			end;
		if( precio > 16) then begin
			if ( codigo mod 2 = 0) then
				mas16:=mas16+1;
		end;
	end;
	writeln('El promedio es: ',promedio / 6);
	writeln('el codigo con el producto mas barato es: ',codigomin1, 'el segundo codigo del producto mas barato es: ',codigomin2);
	writeln('La cantidad de productos de mas de 16 pesos con codigo par son: ',mas16);
end.
