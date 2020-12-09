program ejercicio5;
var
  numero:double;
  numero_dos:double;
  i:integer;
begin
  write('Ingrese un numero: ');
  readln(numero);
  write('Ingrese un nuevo numero: ');
  readln(numero_dos);
  i:=1;
  while(i<11) and ((numero_dos * 2)<>numero) do begin
    write('Ingrese otro numero: ');
    readln(numero_dos);
    i:=i+1;
  end;
  if(i=11)then
    writeln('Se salio del bucle ya que se leyeron 10 numeros')
  else
    writeln('Se salio del bucle ya que se ingreso el doble del numero');
 readln;
end.
