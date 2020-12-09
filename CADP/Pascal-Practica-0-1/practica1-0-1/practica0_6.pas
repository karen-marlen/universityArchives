program ejercicio6;
var
	montoDo,valorDo,porce,total1,total2,porceSum:real;
begin
	readln(montoDo);
	readln(valorDo);
	readln(porce);
	total1:= montoDo * valorDo;
	porceSum:= (porce / 100) * total1;
	total2:= porceSum + total1;
	writeln(' la transaccion sera de' ,total2)
end.
