program ej3;
type 
	establecimiento = record
		CUE : Integer;
		nombre : string;
		docentes : Integer;
		alumnos : Integer;
		localidad : string;
	end;
	maximos = record
		max1 : Real;
		max2 : Real;
		CUE1 : Integer;
		CUE2 : Integer;
		nombre1 : string;
		nombre2 : string;
	end;

procedure leerDatos(var escuela:establecimiento);
	begin
		with escuela do begin
			writeln('CUE:'); readln(CUE);
			writeln('Nombre del establecimiento:'); readln(nombre);
			writeln('Cantidad de docentes:'); readln(docentes);
			writeln('Cantidad de alumnos:'); readln(alumnos);
			writeln('Localidad:'); readln(localidad);
			writeln('---------------------------')
		end;
	end;


procedure actualizarMax(nombre:string; CUE:Integer; ratio:Real; var maximos_ratios:maximos);
	begin
		if (ratio >= maximos_ratios.max1) then
		begin
		with maximos_ratios do begin
			max2 := max1; {primero actualizo el maximo2 para no perder la informacion del max1}
			CUE2 := CUE1;
			nombre2 := nombre1;
			max1 := ratio; {ahora si puede sobreescribir el max1 con el nuevo ratio}
			CUE1 := CUE;
			nombre1 := nombre;
			end;
		end;
	end;


function relacioAlumnos(alumnos:Integer; docentes:Integer):Real;
begin
	relacioAlumnos:=alumnos/docentes;
end;

var
	escuela:establecimiento;
	maximos_ratios:maximos;
	contador, i: Integer;
	ratio:Real;
begin
	contador := 0;
	{Inicializo el registro de maximos}
	maximos_ratios.max1:=-1; 
	maximos_ratios.max2:=-1;
	maximos_ratios.CUE1:=0;
	maximos_ratios.CUE2:=0;
	for i:=1 to 5 do begin
		leerDatos(escuela);
		ratio:=relacioAlumnos(escuela.alumnos, escuela.docentes);
		if (ratio > 23.435) then
		contador:= contador + 1;
		actualizarMax(escuela.nombre, escuela.CUE, ratio, maximos_ratios);
	end;
	writeln('La cantidad de establecimientos con una relacion alumno-docente mayor a 23,435 fue de ', contador);
	writeln('Los dos mejores ratios lo tuvieron los siguientes establecimientos:');
	writeln('1° Escuela: ', maximos_ratios.nombre1, 'con el CUE: ', maximos_ratios.CUE1);
	writeln('2° Escuela: ', maximos_ratios.nombre2, 'con el CUE: ', maximos_ratios.CUE2);
end.


{El Ministerio de Educación desea realizar un relevamiento de las 2400 escuelas primarias de la
provincia de Bs. As, con el objetivo de evaluar si se cumple la proporción de alumnos por docente
calculada por la UNESCO para el año 2015 (1 docente cada 23,435 alumnos). Para ello se cuenta con
información de: CUE (código único de establecimiento), nombre del establecimiento, cantidad de
docentes, cantidad de alumnos, localidad. Se pide implementar un programa que procese la
información y determine:
◦ la cantidad de escuelas de La Plata con una relación de alumnos por docente superior a la
sugerida por UNESCO.
◦ el CUE y nombre de las dos escuelas con mejor relación entre docentes y alumnos
El programa debe utilizar:
A) Un módulo para la lectura de la información de la escuela.
B) Un módulo para determinar la relación docente-alumno (esa relación se obtiene del cociente
entre la cantidad de alumnos y la cantidad de docentes).}

{
	Procesar info:
registro establecimiento --> establecimiento = record
- CUE:nteger
- Nombre escuela:string
- Cantidad docentes:integer
- cantidad alumnos:integer
- localidad: string
}
{
	Informar:
	- contador de establecimientos con (alumnos/docente > 23.435)
	- 2 maximos ratios de alumnos/docente. (max1, max2, cue1, cue2):
		puede ser un registro. maximos_ratios
}

{
	Modulos:
	A) leerDatos(escuela:establecimiento)
	B) --puede ser una funcion: ratio(alumnos, docentes) --> ratio:=alumnos/docentes
}