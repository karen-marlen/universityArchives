program ej1;
var i, mayores_a5, suma, num: Integer;
	
begin
	mayores_a5 :=0 ;
	suma := 0;
	for i:=1 to 10 do 
		begin
			readln(num);
			suma := suma + num;
			if (num > 5) then
			mayores_a5 := mayores_a5 + 1;	
		end;
	writeln('La cantidad de numeros mayores a 5 fue de: ', mayores_a5);
end.