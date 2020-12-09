program ej9;
procedure masBarata(precio:Real; codigo:Integer; var precioMin:Real; var codigoMin:Integer);
	begin
		if(precio < precioMin) then
		begin
			precioMin:=precio;
			codigoMin:=codigo;
		end
	end;

procedure pantalonMax(precio:Real; codigo:Integer; var precioMax:Real; var codigoMax:Integer);
	begin
		if (precio > precioMax) then
				precioMax := precio;
				codigoMax:=codigo;		
	end;
var precio, precioMin, precioMax:Real;
	i, codigo, codigoMin, codigoMax: Integer;
	prenda:String;

begin
	precioMin:= 32767;
	precioMax:=0;
	for i:=1 to 2 do begin
		writeln('Escriba el codigo, tipo de prenda y precio: ');
		readln(codigo);
		readln(prenda);
		readln(precio);
		masBarata(precio, codigo, precioMin, codigoMin);
		if (prenda='pantalon') then
		pantalonMax(precio, codigo, precioMax, codigoMax);
	end;
	writeln('La prenda mas barata fue con el codigo ',codigoMin, ' y el pantalon mas caro fue con el codigo ', codigoMax);
end.