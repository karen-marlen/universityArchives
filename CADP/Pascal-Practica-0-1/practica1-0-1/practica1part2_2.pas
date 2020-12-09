program ejercicio7;
var
	i,numero,min,orden:integer;
begin
	min:=-32767;
	for i:=1 to 10 do begin
		readln(numero);
		if(numero > min) then begin 
			min:=numero;
			orden:=i;
		end;
	end;
	writeln(min);
	writeln(orden);
end.
