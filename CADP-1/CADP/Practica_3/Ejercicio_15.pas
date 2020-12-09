program ejercicio_15;
var
  caracter:char;
  cumpleA:boolean;
  cumpleB:boolean;
begin
  writeln('Ingrese la primer secuencia de caracteres: ');
  readln(caracter);
  if(caracter='a') or (caracter ='e') or (caracter ='i') or (caracter='o') or (caracter='u') or (caracter='$') then
    cumpleA:=true
  else
    cumpleA:=false;
  while(caracter<>'$') and (cumpleA <> false)do begin
    readln(caracter);
    if(caracter='a') or (caracter ='e') or (caracter ='i') or (caracter='o') or (caracter='u') or (caracter='$') then
      cumpleA:=true
    else
      cumpleA:=false;
  end;
  if(cumpleA <> false) then begin
    writeln('Ingrese la segunda secuencia de caracteres: ');
    readln(caracter);
    if(caracter='a') or (caracter ='e') or (caracter ='i') or (caracter='o') or (caracter='u') or (caracter='#') then
      cumpleB:=false
    else
      cumpleB:=true;
    while(caracter<> '#') and (cumpleB<> false) do begin
      readln(caracter);
      if(caracter='a') or (caracter ='e') or (caracter ='i') or (caracter='o') or (caracter='u') or (caracter='#') then
        cumpleB:=false
      else
        cumpleB:=true;
    end;
    if(cumpleB <> true) and (caracter<>'#') then
      writeln('No se cumplio la condicion en la secuencia B');
  end
  else
    writeln('No se cumplio la condicion en la secuencia A');
  writeln('Las secuencias son correctas');
  readln;
end.

