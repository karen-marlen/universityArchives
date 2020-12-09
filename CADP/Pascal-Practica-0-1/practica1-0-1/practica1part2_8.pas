program ejercicio8;

var
	i,cantv,dia:integer;
	monto,montoTotal,mayor:real;
begin
	mayor:=-32767;
	cantv:=0;
	montoTotal:=0;
	for i:=1 to 31 do begin
		cantv:=0;
		writeln('Ingrese el monto del dia ' ,i);
		readln(monto);
		montoTotal:=montoTotal + monto;
		while ( monto <> 0) do begin
			readln(monto);
			cantv:=cantv+1;
			montoTotal:=montoTotal + monto;
			if(cantv < mayor) then
				mayor:=cantv;
				dia:=i;
		end;
		writeln('La cantidad de ventas para el dia ',i, ' fueron : ',cantv);
	end;
	writeln('El monto total acumulado es: ',montoTotal :02:02);
	writeln('El dia en que se realizo la mayor cantidad de ventas fue el dia ',dia);
end.
