program ejercicio;

var
	i,num,min1,min2:integer;
begin
	min1:=32767;
	min2:=32767;
	for i:=1 to 5 do begin
		readln(num);
		if( num < min1) then begin
			min1:=min2;
			min1:=num
		end
		else
			min2:=num;
	end;
	writeln(min1 , min2);
end.
