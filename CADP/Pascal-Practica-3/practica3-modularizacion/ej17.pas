program ej17;


	function mejoresTresdeFeb(localidad:String;rendimiento:Real): Boolean;
	begin
		mejoresTresdeFeb:= (localidad='Tres de Febrero') and (rendimiento > 10000);
	end;


	function calcRendimiento(hectareas:Real; zona:Integer; precio:Real):Real;
	var rendimientoPorHa:Real;
	begin
		case zona of
		1: rendimientoPorHa:= 6;
		2: rendimientoPorHa:= 2.6;
		3: rendimientoPorHa:= 1.4;
		else writeln('El numero de zona ingresado es incorrecto.'); 	
	end;
		calcRendimiento:= precio*hectareas*rendimientoPorHa;
	end;


procedure leerDatos(var localidad:string; var hectareas:Real; var zona:Integer);
begin
	writeln('Ingrese el nombre de la localidad: ');
	readln(localidad);
	writeln('Ingrese la cantidad de hectareas: ');
	readln(hectareas);
	writeln('Ingrese el numero de zona (1, 2 o 3): ');
	readln(zona);
end;


const precio = 320;
var hectareas,maxRend, minRend, rendimiento:Real;
zona: Integer;
contadorTresdeFeb:Integer;
maxLocalidad, minLocalidad, localidad:string;


begin
	maxRend:=-1;
	minRend:= 32767;
	contadorTresdeFeb:=0;
	repeat
		leerDatos(localidad, hectareas, zona);
		rendimiento:=calcRendimiento(hectareas, zona, precio);
		if (mejoresTresdeFeb(localidad, rendimiento)) then
		contadorTresdeFeb:=contadorTresdeFeb + 1;
		if (rendimiento >= maxRend) then begin
			maxRend:=rendimiento;
			maxLocalidad:=localidad;
		end;
		if (rendimiento <= minRend) then begin
			minRend:=rendimiento;
			minLocalidad:=localidad;
		end;
		writeln('Datos procesados!');
		writeln();
	until ((localidad='Saladillo') and (hectareas=900));
	writeln('La cantidad de campos en Tres de Febrero con rendimientos mayores a 10k fueron: ', contadorTresdeFeb);
	writeln('La localidad con mayor rendimiento esperado fue: ',maxLocalidad);
	writeln('La localidad con menor rendimiento esperado fue: ', minLocalidad);
end.


{ARBA(localidad, hectareas, zona)
	informar:
		contadorTresdeFeb(rendimiento > 10000
		rendimientoMax
		rendimientoMin)}

{pseudocodigo
ARBA(localidad, hectareas, zona)
begin
repeat 
	leerDatos(localidad, hectareas, zona)
	rendimiento:= rendimiento(hectareas, zona, precio)
until (localidad='Saladillo' and hectareas=900)
informar 
end
}