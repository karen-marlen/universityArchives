program ejercicio5;

var
	nombreP,peliLarga: string [50];
	duracion,mayor,porcentaje,menos90,cont,cant90: integer;
begin
	cont:=0;
	mayor:=-32767;
	cant90:=0;
	menos90:=0;
	porcentaje:=0;
	repeat
		writeln('Ingrese el nombre de la pelicula');
		readln(nombreP);
		cont:=cont+1;
		writeln('Ingrese la duracion de la pelicula');
		readln(duracion);
		if(mayor < duracion) then begin
			mayor:=duracion;
			peliLarga:=nombreP;
		end;
		if(duracion > 90) and (duracion <= 120) then begin
			cant90:=cant90+1;
			porcentaje:= (cant90 * 100) div cont;
		end;
		if(duracion < 90) then
			menos90:=menos90 + 1;
	until ( nombreP = 'El hombre arana');
	writeln('La peli mas larga es: ',peliLarga);
	writeln('El porcentaje de peliculas que duran entre 90 y 120 son: ',porcentaje);
	writeln('La cantidad de peliculas menos de 90 son: ',menos90);
end.
