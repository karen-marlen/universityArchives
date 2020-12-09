program ej8;
	type

		perfil = record
			dni : Integer;
			nombre : String;
			apellido : String;
			email : String;
		end;

		proyecto = record
			codigo : Integer;
			titulo : String;
			docente : perfil;
			alumnos : Integer;
			escuela : String;
			localidad : String;
		end;

procedure leerProyecto(var proyecto:proyecto);
	begin
		with proyecto do begin
			writeln('------ Ingrese un nuevo proyecto ----');
			writeln('Codigo'); readln(codigo);
			writeln('Titulo'); readln(titulo);
			writeln('Alumnos'); readln(alumnos);
			writeln('Escuela'); readln(escuela);
			writeln('Localidad'); readln(localidad);
			with docente do begin
			writeln('Dni docente'); readln(dni);
			writeln('Nombre docente'); readln(nombre);
			writeln('Apellido'); readln(apellido);
			writeln('Email docente'); readln(email);
			end;
		end;
	end;

procedure actualizarMaxAlumnos(var max1, max2:Integer; var nombre1, nombre2:String; escuela_actual:String; alumnos_actual:Integer);
begin
	if alumnos_actual >= max1 then begin
		max2 := max1;
		nombre2 := nombre1;
		max1 := alumnos_actual;
		nombre1 := escuela_actual;
	end
	else begin
		if alumnos_actual >= max2 then begin
			max2 := alumnos_actual;
			nombre2 := escuela_actual;
			
		end;
	end;
end;


function digitosIgualCantidad(codigo:Integer):Boolean;
var dig, pares, impares: Integer;
begin
	pares := 0;
	impares := 0;
	while((codigo) <> 0) do begin
		dig := codigo mod 10;
		if ((dig mod 2) = 0 ) then begin
		pares := pares + 1;
		end
		else
		impares := impares + 1;
		codigo := codigo div 10;
	end;
	digitosIgualCantidad := (pares = impares);
end;


var 
escuelaMax1, escuelaMax2, esc_actual, loc_actual: String;
p: proyecto;
max1, max2 : Integer;
totalEscuelas, escuelasLocActual: Integer;



begin
escuelaMax1:='';
escuelaMax2:='';
max1:=0;
max2:=0;
totalEscuelas := 0;
leerProyecto(p);
	while(p.codigo <> -1) do begin
		loc_actual := p.localidad;
		escuelasLocActual := 0;
		while ((p.codigo <> -1) and (p.localidad = loc_actual)) do begin
			esc_actual := p.escuela;
			while ((p.codigo <> -1) and (p.escuela = esc_actual)) do begin
				if ((loc_actual='Daireaux') and digitosIgualCantidad(p.codigo)) then 
					writeln('El proyecto ', p.titulo, ' tiene un codigo con igual digitos impares y pares.');
					actualizarMaxAlumnos(max1, max2, escuelaMax1, escuelaMax2, p.escuela, p.alumnos);
					leerProyecto(p);
			end; 
			totalEscuelas := totalEscuelas + 1;
			escuelasLocActual := escuelasLocActual + 1;
		end;
		writeln('La cantidad de escuelas participando en la localidad ', loc_actual, ' fue de ', escuelasLocActual);
	end;
	writeln('El total de escuelas participando fue de ', totalEscuelas);
end.








{
La Comisión Provincial por la Memoria desea analizar la información de los proyectos presentados en
el programa Jóvenes y Memoria durante la convocatoria 2020. Cada proyecto posee un código único,
un título, el docente coordinador (DNI, nombre y apellido, email), la cantidad de alumnos que
participan del proyecto, el nombre de la escuela y la localidad a la que pertenecen. Cada escuela
puede presentar más de un proyecto, y la información se ingresar ordenada consecutivamente por
localidad, y para cada localidad por escuela.
Realizar un programa que lea la información de los proyectos hasta que se ingrese el proyecto con
código -1 (que no debe procesarse), e informe:

A) La cantidad total de escuelas que participan en la convocatoria 2018 y la cantidad de escuelas
por cada localidad
B) Los nombres de las dos escuelas con mayor cantidad de alumnos participantes
C) El título de los proyectos de la localidad de Daireaux cuyo código posee igual cantidad de dígitos
pares e impares.


c) contarPares(digito){
		while((digito div 10) <> 0) do begin
}


}

