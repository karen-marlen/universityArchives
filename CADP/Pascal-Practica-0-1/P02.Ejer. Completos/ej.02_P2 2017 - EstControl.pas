{2. Se lee una secuencia de caracteres terminada en “.”.
La secuencia está dividida en palabras, separadas por uno o más blancos. 
Informar la cantidad de palabras.}

program EJ_02;
var
	cantPal:integer; {Contador de palabras}
	car:char;
begin
  cantPal:=0;         
  writeln('Ingrese texto');
  read(car);
  {Descarto blancos}
  while (car = ' ') do 
    read(car); 
  while (car <> '.') do begin
    {Cuento la palabra que empieza}
    cantPal:=cantPal+1;
    {Leo el resto de la palabra}
    while (car <> '.') and (car <> ' ' ) do
      read(car);
    {Descarto blancos}  
    while (car = ' ') do  
      read(car); 
  end;
  writeln('La cantidad de palabras es: ', cantPal);
end.