program ejercicio_8;
procedure esDoble(numA:integer; numB:integer; var ok:boolean);
begin
  if((numA*2)= numB) then
    ok:=true
  else
    ok:=false;
end;

var
  total_pares:integer;
  total_dobles:integer;
  numA,numB:integer;
  ok:boolean;
begin
  total_pares:=0;
  total_dobles:=0;
  write('Ingrese el primer numero del par: ');
  readln(numA);
  write('Ingrese el segundo numero del par: ');
  readln(numB);
  while (numA<>0) and (numB <>0) do begin
    total_pares:=total_pares+1;
    esDoble(numA,numB,ok);
    if(ok)then
      total_dobles:=total_dobles+1;
    write('Ingrese el primer numero del par: ');
    readln(numA);
    write('Ingrese el segundo numero del par: ');
    readln(numB);
  end;
  writeln('--------------------');
  writeln('Cantidad de pares leidos: ',total_pares);
  writeln('Canidad donde numB es el doble de numA: ',total_dobles);
  readln;
end.
