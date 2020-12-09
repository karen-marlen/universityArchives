program ejercicio_7;
var
  codigo:integer;
  actual,nuevo:double;
begin
  repeat
    write('Ingrese el precio actual: ');
    readln(actual);
    write('Ingrese el precio nuevo: ');
    readln(nuevo);
    write('Ingrese el codigo del producto: ');
    readln(codigo);
    if(nuevo>(actual+(actual*10)/100))then
      writeln('El aumento de precio del producto ',codigo,' es superior al 10%')
    else
      writeln('El aumento del precio del producto ',codigo,' no supero el 10%');
  until(codigo=32767);
  readln;
end.
