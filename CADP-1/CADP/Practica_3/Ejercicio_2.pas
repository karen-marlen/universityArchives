program alcance;
var
  a:integer;

procedure uno;
var
  b:integer;
begin
  b:=2;
  writeln(b);
end;

begin
  a:=1;
  uno;
  writeln(a,b);
  readln;
end.

{
No compila ya que en la linea 16 vemos que se usa la variable 'b' que
no existe en el main (solo en el procedure uno())

}
