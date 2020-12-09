program ej3;
type 
	primer_decena = 1..10; 
	var nombre, nombre_stop: String;
	nota: primer_decena;
	nota_ocho, nota_siete: Integer;
begin
	nota_siete := 0;
	nota_ocho := 0;
	nombre_stop := 'Zidane Zinedine';
	repeat 
	writeln('Escriba el nombre del alumno: ');
	readln(nombre);
	writeln('Ingrese la nota del alumno: ');
	readln(nota);
	if (nota >= 8) then
	nota_ocho := nota_ocho + 1;
	if (nota = 7) then
	nota_siete := nota_siete + 1;
	until (nombre = nombre_stop);
	writeln('la cantidad de alumnos que sacaron 8 o mas fue de: ', nota_ocho);
	writeln('la cantidad de alumnos que sacaron 7 fue de ', nota_siete);
end.