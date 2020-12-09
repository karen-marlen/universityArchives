{Se lee una secuencia de caracteres terminada en “*”. Informar la cantidad
 de caracteres “a” leídos.}

program Ej_01_01;
var
	car : char;
	car_a : integer;
begin
	car_a := 0;
	read (car);
	while (car <> '*') do begin
			repeat
				read(car);
			until (car <> 'a') or (car <> ' ');
			if (car = 'a') then
				car_a := car_a + 1;
	end;
	writeln('caracteres a leidos: ', car_a);
end.