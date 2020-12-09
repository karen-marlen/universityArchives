program ej11;
	procedure suma(num:Integer; var impares:Integer; var pares:Integer);
	var dig:Integer;
	begin
		pares:=0;
		impares:=0;
		while(num<>0) do begin
			dig := num MOD 10;
			if (dig MOD 2 = 0) then
				pares := pares + dig
			else 
				impares := impares + dig;
			num := num DIV 10;
		end;
	end;

var num, impares, pares:Integer; 

begin
	pares := 0;
	impares := 0;
	readln(num);
	while(num <> 123456) do begin
		suma(num, impares, pares);
		writeln('La suma de digitos impares del numero ingresados da: ',impares, ' y la suma de digitos pares del numero ingresado da: ', pares);
		readln(num);
	end;
end.			
