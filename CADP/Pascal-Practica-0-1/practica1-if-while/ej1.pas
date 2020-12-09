program ej1;
var	A, B: Integer;
begin
	read(A,B);
	if (A > B) then
		write('A es mayor que B')
	else if (B > A) then
		write('B es mayor que A')
	else
		write('Los numeros leidos son iguales');
end.