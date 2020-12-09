{Se lee una secuencia de caracteres terminada en “*”. 
La secuencia está dividida en oraciones que finalizan en “.”. 
Las oraciones están divididas en palabras. 
Las palabras pueden estar separadas por uno o más blancos. Informar:
La cantidad total de oraciones leídas.
La cantidad de palabras por oración.}

//((((-ERROR-)))[SOLICIONADO]EL PRORGAMA LEE EL .* COMO OTRA FILA.
//((((ERROR)))EL PROGRAMA NO FINALIZA SI LA ORACION NO ESTA SEGUIDA DE UN .*

program Ej_06;
var
      car:char;
      cont_oraciones, oracion:integer;
begin
      writeln('Ingrese Texto');
      read(car);
      oracion:=0;
      while (car<>'*') do begin
        while (car='.') do
          read(car);
        cont_oraciones:=0;
        while (car<>'.') and (car<>'*') do begin
         	while (car = ' ') do //
  				  read(car); 
  				while (car <> '.') do begin
    				cont_oraciones:=cont_oraciones+1;
    				while (car <> '.') and (car <> ' ' ) do
      				read(car);
			    	while (car = ' ') do   // 
           		read(car);
          end;
        end;
        oracion := oracion + 1;
        writeln('Oracion ',oracion, ': ',cont_oraciones);
        while (car <> '*') and (car <> ' ') do 
        read(car);
      end;
      writeln('oracion: ', oracion);
end.
{hata quier}