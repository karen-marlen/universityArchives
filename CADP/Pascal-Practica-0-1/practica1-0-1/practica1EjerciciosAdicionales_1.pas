PROGRAM orden_ascendente;
var p,n1,n2,n3:integer;
begin
writeln('escriba el primer numero: '); readln(n1);
writeln('escriba segundo numero: '); readln(n2);
writeln('escriba tercer numero: ');readln(n3);
 if n1 < n2 then // 4 < -10
 begin
 p := n1; 
 n1 := n2;
 n2 := p;
 end;
 if n1 < n3 then // 4 < 12
 begin
   p := n1; // p:=4
   n1 := n3; // n1 := 12
   n3 := p; // n3:= 4
 end;
 if n2 < n3 then // -10 < 4
 begin
    p := n2; // p:=-10
    n2 := n3; // n2:=4
    n3 := p; // n3:=-10
 end;
  writeln(n1,'  ',n2,'  ',n3);
end.
