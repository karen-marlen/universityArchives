program ejercicio_3;
var
  numero1,numero2,numero3:integer;
  mayor,medio,menor:integer;
begin
  Write('Ingrese un numero: ');
  readln(numero1);
  write('Ingrese otro numero: ');
  readln(numero2);
  write('Ingrese otro numero: ');
  readln(numero3);
  mayor:=numero1;
  menor:=numero1;
  medio:=numero1;
  if(numero2>=numero1) and (numero2>=numero3) then
    mayor:=numero2
  else
    if(numero2<=numero1)and (numero2<=numero3)then
      menor:=numero2
    else
      medio:=numero2;
    if(numero3>=numero1)and (numero3>=numero2)then
      mayor:=numero3
    else
      if(numero3<=numero1) and (numero3<=numero2)then
        menor:=numero3
      else
        medio:=numero3;
  writeln;
  writeln('Se procede a escribir los numeros de mayor a menor');
  writeln(mayor,' ',medio,' ',menor);
  readln;
end.
