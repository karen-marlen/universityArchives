program ej1;
	type
		str20 = string[20];
		alumno = record
			codigo : Integer;
			nombre : str20;
			promedio : Real;
		end;
		maximo = record
			max : Real;
			nombre : str20;
		end;
procedure leer(var alu:alumno);
	begin
		writeln('Escriba el codigo del alumno');
		readln(alu.codigo);
		if (alu.codigo <> 0) then begin
			writeln('Escriba el nombre del alumno');
			readln(alu.nombre);
			writeln('Escriba el promedio del alumno');
			readln(alu.promedio);
		end;
	end;

procedure actualizarMaximo(nombre:str20; promedio:Real; var maxProm:maximo);
	begin
		if (promedio >= maxProm.max) then begin
			maxProm.max := promedio;
			maxProm.nombre := nombre;
		end;
	end;

var 
	a:alumno;
	cantidad:Integer;
	mejorPromedio : maximo;
begin
	mejorPromedio.max:=-1;
	cantidad := 0;
	leer(a);
	while (a.codigo <> 0) do begin
		cantidad := cantidad + 1;
		actualizarMaximo(a.nombre, a.promedio, mejorPromedio);
		leer(a);
	end;
	writeln('La cantidad total de alumnos leido fue de ', cantidad);
	writeln('El alumno con mejor promedio fue ', mejorPromedio.nombre);
end.


{a) Complete el programa principal para que lea información de alumnos (código, nombre, promedio) e
informe la cantidad de alumnos leídos. La lectura finaliza cuando ingresa un alumno con código 0, que no
debe procesarse. Nota: utilizar el módulo leer.
b) Modifique al programa anterior para que, al finalizar la lectura de todos los alumnos, se informe
también el nombre del alumno con mejor promedio.}