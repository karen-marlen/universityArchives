program ej2;
var	x, abs: Real;
begin
	read(x);
	if (x < 0) then
	abs := x * (-1)
	else
	abs := x;
	write(abs:10:2);
end.