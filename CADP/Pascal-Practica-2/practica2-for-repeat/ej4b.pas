program ej4b;
	var
	menor, segundo_menor, num: Real;
	i: Integer;
	menor_init: Boolean;
begin
	menor_init:=false;
	read(num);
	while (num <> 0) do 
	begin
	if (menor_init = false) then 
	begin
		menor := num;
		menor_init := true;
	end;
	if (num < menor) then
	begin
	segundo_menor := menor;
	menor := num;
	end;
	read(num);
	end;
	write('El numero menor fue ', menor:8:2, ' y el segundo menor fue ', segundo_menor:8:2);
end.

