program ej12;
procedure calculo(num1:Integer; num2: Integer; var sum:Integer; var prod:Integer);
 var i:Integer;
 begin
 	if (num1 <= num2) then
 	begin
 		for i:= num1 to num2 do 
 			begin
 				sum := sum + i;
 				prod := prod * i;
 			end;
 	end
 	else 
 	for i:= num2 to num1 do 
 			begin
 				sum := sum + i;
 				prod := prod * i;
 			end; 
 end;


var i, num1, num2, suma, producto: Integer;
begin
	suma:=0;
	producto:=1;
	for i:=1 to 10 do
		begin
			writeln('Escriba el primer numero: ');
			readln(num1);
			writeln('Escriba el segundo numero: ');
			readln(num2);
			calculo(num1,num2,suma, producto);
			writeln('La suma es, ',suma);
			writeln('El producto es, ',producto);
			suma:=0;
			producto:=1;
		end;
	writeln('FIN');
end.