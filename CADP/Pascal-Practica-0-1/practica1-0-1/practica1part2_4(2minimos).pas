program ejercicio;

var
	i,num,min1,min2:integer;
begin
	min1:=32767;
	min2:=32767;
	for i:=1 to 5 do begin
		readln(num);
		if( num < min1) then begin
			min2:=min1;
			min1:=num;
		end
		else
			if(num < min2 ) then
				min2 := num;
	end;
	writeln(min1 , min2);
end.
