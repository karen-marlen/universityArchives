{2.Realizar un programa que lea desde teclado la informaciÃ³n de 500 alumnos de una facultad.
De cada alumno se lee DNI y promedio. Informar en pantalla:
a.La cantidad de alumnos con promedio mayor a 6.
b.El DNI del alumno con promedio mÃ¡s alto.}
program Ej2;
var 
	DNI, DNI1, i : integer;
	promedio, prom_max, prom_6 : integer;
begin
	{Inicio las variables}
	prom_6 := 0;
	promedio := 0;
	prom_max := 0;
	{Leo los 10 numeros}
	for i:= 1 to 10 do
	begin
		writeln('Escribir promedio');
		readln(promedio);
		writeln('Escribir DNI');
		readln(DNI);
		if (promedio > 6) then begin
			prom_6 := prom_6 + 1;
			{prom_1 := promedio;}
		end;
		if (promedio > prom_max) then begin
			prom_max := promedio;
			DNI1 := DNI
		end;
	end;
	writeln('Los alumnos con promedio mayor a 6 son: ', prom_6);
	writeln('El DNI del alumno con el promedio mas alto es: ', DNI1);
    readln;
end.