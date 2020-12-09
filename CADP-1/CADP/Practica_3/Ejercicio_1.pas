program alcance1;
var
  a:integer;

procedure uno;
var
  b:integer;
begin
  b:=3;
  writeln(b);
end;

begin
  a:=1;
  b:=2;
  uno;
  writeln(b,a);
  readln;
end.

{

No compila ya que no se declaro la variable 'b' en el programa principal


--------------------------
Estoy en el main
a:=1;
b:=2;
llamo a uno();

Estoy en uno()
declaro variable local b
b:=3;
imprimo b ---> '3'
termino procedure y vuelvo a main

Estoy en Main
imprimo (b,a) ---> '2' - '1'
}
