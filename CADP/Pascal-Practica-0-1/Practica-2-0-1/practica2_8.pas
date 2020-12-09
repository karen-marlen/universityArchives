program ejercicio8;

procedure leerProductos(var precio,precioTotal,cantPro:real; var codigo:integer; var tipo:string);
	begin
		writeln('Ingrese el precio del producto');
		readln(precio);
		cantPro:=cantPro+1;
		precioTotal:=precioTotal + precio;
		writeln('Ingrese el codigo de producto');
		readln(codigo);
		writeln('Ingrese el tipo de producto');
		readln(tipo);
	end;
	
procedure procesarProductos(var precio,precioTotal,cantPro,max1,max2,pantalon:real;var codigo,codigoca1,codigoca2,codiPant:integer;var tipo:string);
	begin
		if( max1 > precio) then begin
			max2:=max1;
			codigoca2:=codigoca1;
			max1:=precio;
			codigoca1:=codigo;
		end
		else if(max2 > precio) then begin
			max2:=precio;
			codigoca2:=codigo;
		end;
		if(tipo = 'pantalon') and (pantalon < precio) then begin
			pantalon:=precio;
			codiPant:=codigo;
		end;
	end;
		
var
	precio,precioTotal,cantPro,max1,max2,pantalon:real;
	codigo,i,codigoca1,codigoca2,codiPant:integer;
	tipo:string [20];
begin
	codiPant:=0;
	pantalon:= -32767;
	max1 := 32767;
	max2 := 32767;
	codigoca1:=0;
	codigoca2:=0;
	precioTotal:=0;
	cantPro:=0;
	for i:=1 to 4 do begin
		leerProductos(precio,precioTotal,cantPro,codigo,tipo);
		procesarProductos(precio,precioTotal,cantPro,max1,max2,pantalon,codigo,codigoca1,codigoca2,codiPant,tipo);
	end;
	writeln('El codigo del producto mas barato es: ',codigoca1, ' El codigo del segundo producto mas barato es: ' ,codigoca2);
	writeln('El codigo del producto pantalon mas caro es : ',codiPant);
	writeln('El precio promedio es: ' ,precioTotal / cantPro :02:02);
end.
