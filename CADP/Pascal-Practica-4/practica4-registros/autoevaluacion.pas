program autoevaluacion;
type
	alumno = record
		apellido : String;
		dni : Integer;
		cursadasAprobadas : Integer;
		finalesAprobados : Integer;
		promedio : Real;
	end;

	maximos = record
		DNI1 : Integer
;		DNI2 : Integer;
		max1 : Real;
		max2 : Real;
	end;


	procedure leerDatos(var a:alumno);
	begin
		with a do begin
			writeln('Apellido'); readln(apellido);
			writeln('DNI'); readln(dni);
			writeln('Cursadas Aprobada'); readln(cursadasAprobadas);
			writeln('Finales Aprobados'); readln(finalesAprobados);
			writeln('promedio'); readln(promedio);
			writeln('------------------');
		end;
	end;

	procedure actualizarAlDia(var contadorAlDia:Integer; cursadasAprobadas:Integer; finalesAprobados:Integer);
	var estaAlDia:Boolean;
	begin
		estaAlDia:=((finalesAprobados/cursadasAprobadas) > 0.6);
		if estaAlDia then
		contadorAlDia := contadorAlDia + 1; 
	end;

	procedure initMax(var max:maximos);
	begin
		with max do begin
			DNI1:= 0;
			DNI2 := 0;
			max1 := 0;
			max2 := 0;
		end;
	end;

	procedure actualizarPromedios(var totalPromedios:Real; promedioActual:Real);
	begin
		totalPromedios := totalPromedios + promedioActual;
	end;

	procedure actualizarMaximos(var maxis:maximos; dniActual:Integer; promedioActual:Real);
	begin
		if promedioActual >= maxis.max1 then begin
			maxis.max2 := maxis.max2;
			maxis.DNI2 := maxis.DNI2;
			maxis.max1 := promedioActual;
			maxis.DNI1 := dniActual;
		end
		else
		begin
			if promedioActual >= maxis.max2 then begin
				maxis.max2 := promedioActual;
				maxis.DNI2 := dniActual;
			end;
		end;
	end;

	function promedioGeneral(totalPromedios:Real; totalAlumnos:Integer): Real;
	begin
		promedioGeneral:= totalPromedios/totalAlumnos;
	end;


	var
		i,totalAlumnos,contadorAlDia: Integer;
		max : maximos;
		alum : alumno;
		sumaTotalPromedios : Real;
		promedioGen:Real;

begin
	totalAlumnos := 3;
	contadorAlDia := 0;
	initMax(max);
	sumaTotalPromedios := 0;
		for i:=1 to totalAlumnos do begin
			leerDatos(alum);
			actualizarAlDia(contadorAlDia, alum.cursadasAprobadas, alum.finalesAprobados);
			actualizarMaximos(max, alum.dni, alum.promedio);
			actualizarPromedios(sumaTotalPromedios, alum.promedio);
		end;
		promedioGen:= promedioGeneral(sumaTotalPromedios, totalAlumnos);
		writeln('La cantidad de alumnos al dia fue de ', contadorAlDia, ' alumnos.');
		writeln('El promedio general fue de ', promedioGen:4:2);
		writeln('El dni de los dos mejores promedios fue ', max.DNI1, ' y ', max.DNI2);

end.



{alumnos de primer
alumnos de segundo


for 2400
se lee: apellido, dni, cursadasAprobadas, finalesAprobados, notaProm


informar: 
-cantidad de alumnos al dia( alumnoAlDia = (finalesAprobados/cursadasAprobadas) > 0,6)
- promedio general ( sumaTotalPromedios/2400)
- DNImax1 y DNImax2 --> maximos: record
												DNI1:integer;
												DNI2: integer;
												max1; Real;
												max2; Real;
}