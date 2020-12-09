{5.Realizar un programa para administrar la información de una
competencia de ciclismo. Para ello se leen desde teclado números 
de ciclista y, para cada uno de los ciclistas, el tiempo de su vuelta
más rápida. La lectura finaliza cuando llega el número de ciclista -1,
el cual no debe procesarse. Informar en pantalla:
a.El número del ciclista que completó la vuelta en el mejor tiempo.
b.El número del ciclista que completó la vuelta en el peor tiempo.
c.La cantidad de ciclistas que completaron la vuelta entre 45 y 60 segundos.}

program Ej5;
var 
ciclista, n_ciclista_peor_T, n_ciclista_mejor_T : integer;
ciclista_mejor_T, ciclista_peor_T, ciclista_S, T_ciclista : real;
begin
	ciclista := -1;
	ciclista_mejor_T := 10000;
	ciclista_peor_T := 0;
	ciclista_S := 0;
	T_ciclista := 0;
	writeln('Ingrese número de ciclista');
	readln(ciclista);
	while(ciclista <> -1) do begin
		writeln('Ingrese tiempo del ciclista');
		readln(T_ciclista);
		if (T_ciclista > ciclista_peor_T) then begin
			ciclista_peor_T := T_ciclista;
			n_ciclista_peor_T := ciclista;
		end;
		if (T_ciclista < ciclista_mejor_T) then begin
			ciclista_mejor_T := T_ciclista;
			n_ciclista_mejor_T := ciclista;
		end;
		if (45 <= T_ciclista) and (60 >= T_ciclista) then begin
			ciclista_S := ciclista_S + 1;
		end;
		writeln('Ingrese número de ciclista');
		readln(ciclista);
	end;
	writeln('El numero del ciclista que completó la vuelta en el mejor tiempo es: ', n_ciclista_mejor_T);
	writeln('EL numero de ciclista que completó la vuela en el peor tiempo es: ', n_ciclista_peor_T);
	writeln('La cantidad de ciclistas que completaron la vuela entre 45 y 60 segundos es: ', ciclista_S:2:2);
	readln;
end.