program ejercicio_12;
procedure operaciones_pares(x:integer;y:integer; var total_suma:integer; var total_mult:integer);
var
  i:integer;
begin
  for i:=x to y do begin
    total_suma:=total_suma+i;
    total_mult:=total_mult*i;
  end;
end;

procedure informar(x,y,total_suma,total_mult:integer);
begin
  writeln('La suma entre los numeros del par (',x,',',y,') es: ',total_suma);
  writeln('El producto entre los numeros del par (',x,',',y,') es: ',total_mult);
end;
var
  x:integer;
  y:integer;
  total_suma:integer;
  total_mult:integer;
  i:integer;
begin
  for i:=1 to 5 do begin
    total_suma:=0;
    total_mult:=1;
    write('Ingrese el primer numero del par: ');
    readln(x);
    write('Ingrese el segundo numero del par: ');
    readln(y);
    operaciones_pares(x,y,total_suma,total_mult);
    informar(x,y,total_suma,total_mult);
  end;
  readln;
end.

