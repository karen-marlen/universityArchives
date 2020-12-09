program ejercicio_1;
var
  num,total:integer;
  i:integer;
  cant_mayores:integer;
begin
  total:=0;
  cant_mayores:=0;
  for i:=1 to 10 do begin
    write('Ingrese un numero: ');
    readln(num);
    total:=total+num;
    if(num>5)then
      cant_mayores:=cant_mayores+1;
  end;
  writeln('Suma de numeros: ',total);
  writeln('Cantidad de numeros mayores a 5: ',cant_mayores);
  readln;
end.
