{Se lee una secuencia de caracteres terminada en “%”. La secuencia 
está dividida en palabras, separadas por uno o más blancos. 
Informar la cantidad de palabras que finali%an con “S” o “s”}


Program palabra;
var
  cantPal:integer;
  car, ant:char;
begin
  cantPal:=0;    
  read(car);
  while (car = ' ') do
    read(car);
  while (car <> '%') do begin
    if (car <> ' ') then begin
      while (car <> '%') and (car <> ' ' ) do begin
        ant:=car;
        read(car);
      end;
      if (ant = 'S') or (ant = 's') then
        cantPal:=cantPal+1;
    end
    else
      while (car <> '%') and (car <> ' ' ) do
        read(car);
    while (car = ' ') do
      read(car);
  end;
  writeln('La cantidad de palabras es: ', cantPal);
end.