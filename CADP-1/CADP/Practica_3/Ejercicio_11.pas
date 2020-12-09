program ejercicio_11;
procedure pares_impares(var pares,impares:integer;numero:integer);
begin
  while(numero<>0)do begin
    if((numero MOD 10) MOD 2 =0)then
      pares:=pares+1
    else
      impares:=impares+1;
    numero:= numero DIV 10;
  end;
end;

procedure informar(pares,impares:integer;numero:integer);
begin
  writeln('La cantidad de digitos pares del numero ',numero,' es: ',pares);
  writeln('La cantidad de digitos impares del numero ',numero,' es: ',impares);
  writeln;
end;
var
  pares:integer;
  impares:integer;
  numero:integer;
begin
  write('Ingrese un numero: ');
  readln(numero);
  while(numero<> 123456) do begin
    pares:=0;
    impares:=0;
    pares_impares(pares,impares,numero);
    informar(pares,impares,numero);
    write('Ingrese un numero: ');
    readln(numero);
  end;
  writeln('Se ingreso el codigo para finalizar el programa.');
  readln;
end.

