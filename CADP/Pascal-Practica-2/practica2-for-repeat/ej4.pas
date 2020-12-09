program ej4;
	var
	menor, segundo_menor, num: Real;
	i: Integer;
begin
	for i:=1 to 1000 do 
	begin
	read(num);
	if (i = 1) then menor := num;
	if (num < menor) then
	begin
	segundo_menor := menor;
	menor := num;
	end;
	end;
	write('El numero menor fue ', menor:8:2, ' y el segundo menor fue ', segundo_menor:8:2);
end.




{leer hasta la iteracion numero 1000 incluida
 menor numero es num < menor? --> segundo_menor = menor && menor = num 
 
 for 1 a 1000:
  read num
  if num < menor:
  		segundo_menor = menor
  		menor = num
 } 