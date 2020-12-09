program ej4a;
	var
	menor, segundo_menor, num: Real;
	i: Integer;
	menor_init: Boolean;
begin
	menor_init:=false;
	repeat
	read(num);
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
	until (num = 0);
	write('El numero menor fue ', menor:8:2, ' y el segundo menor fue ', segundo_menor:8:2);
end.

