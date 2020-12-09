program ejercicio_10;
procedure descomponer(numero:integer;var cantidad:integer;var suma:integer);
begin
  while(numero<>0)do begin
    suma:=suma + numero MOD 10;
    cantidad:=cantidad +1;
    numero:=numero DIV 10
  end;
end;

var
  suma:integer;
  numero:integer;
  cantidad:integer;
  total:integer;
begin
  total:=0;
  repeat
    suma:=0;
    cantidad:=0;
    write('Ingrese un numero: ');
    readln(numero);
    descomponer(numero,cantidad,suma);
    total:=cantidad+ total;
  until(suma = 10);
  writeln('La cantidad total de digitos leidos es: ',total);
  readln;
 end.
