program ejercicio1;
var
	caramelos,clientes,paraKio,paraCli:integer;
	precioCa:real;
begin
	writeln('Ingrese los caramelos');
	readln(caramelos);
	writeln('Ingrese los clientes');
	readln(clientes);
	paraKio:= caramelos mod clientes;
	paraCli:= caramelos div clientes;
	precioCa := paraCli * 1.60;
	writeln('La cantidad de caramelos para el kiskero son: ' ,paraKio);
	writeln('La cantidad de caramelos para clientes es : ', paraCli);
	writeln('La cantidad de plata que debe cobrar el kioskero es : ' ,precioCa);
end.
