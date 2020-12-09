program ej6;
	var porcentaje_destacados, promedio: Real;
	destacados, cantidad_aprobados, total_alumnos, legajo: Integer;

begin
	cantidad_aprobados := 0;
	total_alumnos := 0;
	destacados := 0;
	writeln('Ingrese N° de legajo');
	read(legajo);
	while (legajo <> -1) do
		begin
			total_alumnos := total_alumnos + 1;
			writeln('Ingrese promedio');
			read(promedio);
			if (promedio > 6.5) then
				cantidad_aprobados := cantidad_aprobados + 1;
			if ((promedio > 8.5) and (legajo < 2500)) then
				destacados := destacados + 1;
			porcentaje_destacados := destacados*100/total_alumnos;
			writeln('Ingrese N° de legajo');
			read(legajo);
		end;
	writeln('La cantidad de alumnos leida es: ', total_alumnos);
	writeln('La cantidad cuyo promedio super 6.5 es de: ', cantidad_aprobados);
	writeln('El porcentaje de alumnos destacados es de ', porcentaje_destacados:5:2, '%')
end.