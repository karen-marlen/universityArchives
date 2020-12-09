program ej2;
	var i, num, indice, ultimo_mayor: Integer;
begin
	ultimo_mayor := 0;
for i:=1 to 10 do
	begin
	read(num);
		if (i > 1) then
			begin
				if (num > ultimo_mayor) then
				begin
				ultimo_mayor := num;
				indice := i;
				end;
			end
		else
		ultimo_mayor := num;
	end;
	writeln('El mayor fue ', ultimo_mayor, ' y se encontro en el indice numero ', indice);
end.

