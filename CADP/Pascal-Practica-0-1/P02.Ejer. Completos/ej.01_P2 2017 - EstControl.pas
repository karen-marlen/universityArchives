{Se lee una secuencia de caracteres terminada en “*”. Informar la cantidad
 de caracteres “a” leídos.}

program Ej_01;
var
cant : integer;
car : char;
begin
cant:=0;
writeln ('Ingrese secuencia de caracteres');
readln(car);
while (car <> '.') do begin
	if (car = 'a') then
		cant:= cant + 1;
	readln(car);
end;
writeln('Cantidad de letras a leídas: ', cant);
end.