procedure digitos(num:Integer; var suma:Integer; var cantidad:Integer);
	var dig:Integer;

	begin
		cantidad:=0;
		suma:=0;
		while(num <> 0) do begin
			dig := num MOD 10;
			suma := suma + dig;
			cantidad := cantidad + 1;
			num := num DIV 10;
		end;
	end;



var cantidad_total, suma, cantidad, num:Integer;
begin
cantidad_total:=0;
suma:=0;
cantidad:=0;
repeat
	readln(num);
	digitos(num, suma, cantidad);
	cantidad_total:= cantidad_total + cantidad;
until (suma=10);
writeln('La cantidad total de digitos leidos fue de ',cantidad_total);
end.