program sumador;
type 
vnums = array[1..10] of integer;

var numeros:vnums;
i : integer;
begin
  for i:=1 to 10 do  {primero bloque for} 
  numeros[i] = i;

  for i:=2 to 10 do {segundo bloque for}
  numeros[i] := numeros[i] + numeros[i-1]
end;
{
a) 1 2 3 4  5  6  7  8  9  10 
b) 1 3 6 10 15 21 28 36 45 55 
c)  for i:=1 to 9 do 
  numeros[i+1] := numeros[i+1] + numeros[i]
e)  for i:=1 to 9 do 
  numeros[i+1] := numeros[i] ;---> 1 1 2 3 4 5 6 7 8 9 
}