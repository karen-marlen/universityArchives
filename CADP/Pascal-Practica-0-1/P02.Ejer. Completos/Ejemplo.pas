
program Ejercicio2;

var
  car:char;
  canpal,minlongN, maxlong, longN:integer;
begin
  canpal:=0;
  minlongN:=9999;
  read(car);
  maxlong := 0;
  while (car<>'!') do begin
  while (car=' ') do
    read(car);
    if (car <>' ') then begin
      longN:=0;
      repeat
        longN:=longN+1;
        read(car);
      until (car=' ') or (car='!');
      if (longN<minlongN) then begin
        minlongN:=longN;
      end
      else
        if (longN > maxlong) then begin
          maxlong := longN;
          end;     
      end
      else
        while (car<>' ') and (car<>'!') do
          read(car);
          canpal:=canpal+longN;
      end;
      writeln('Palabras:',canpal);
      if (canpal>0) then
        writeln('Mínima comenzada con N:',minlongN);
        writeln('maximo', maxlong);
end.