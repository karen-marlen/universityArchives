{Se lee una secuencia de caracteres terminada en “?”. 
La secuencia está dividida en oraciones que finalizan en “.”. 
Las oraciones están divididas en palabras. Las palabras pueden estar 
separadas por uno o más blancos. Informar:
El porcentaje de oraciones leídas que comienzan con “L”.
La cantidad de palabras por oración que finalizan en “!”.
La cantidad total de palabras que empiezan con “P” y finalizan con “R”.}

program Ej_07;
var
      car, ant_EX :char;
      car_L, suma, car_EX, oracion:integer;
begin
      suma := 0;
      oracion:=0;
      car_L:=0;
      writeln('Ingrese Texto');
      read(car);
        while (car<> '?') do begin
            while (car='.') do
                  read(car);
            car_EX:=0;
            while (car<>'.') and (car<>'?') and (car <> ' ') do begin
            	{while (car = ' ') do //}
  				  ant_EX := car;
  				  read(car);
  					if(ant_EX = '!') then
  						car_EX := car_EX + 1;
  				while (car <> '.') do begin
    				suma := suma + 1;
  					if(car = 'L') then
    					car_L:=car_L+1;
    				while (car <> '.') and (car <> ' ' ) do
      					read(car);
			    	while (car = ' ') do   // 
                  		read(car);
                end;
            end;
            oracion := oracion + 1;
            writeln('final !',oracion, ': ',car_EX);
            while (car <> '?') and (car <> ' ') do 
            	read(car);
        end;
      writeln('Porcentaje de palabras que comienzan con “L”: ',car_L);
      writeln('Palabras total: ', suma);
end.

