{Una empresa de transporte de caudales desea optimizar el servicio que brinda a sus clientes.Para
ello, cuenta con información sobre todos los viajes realizados durante el mes de marzo. De cada
viaje se cuenta con la siguiente información: día del mes (de 1 a 31), monto de dinero transportado
y distancia recorrida por el camión (medida en kilómetros).
a. Realizar un programa que lea y almacene la información de los viajes (a lo sumo 200).
La lectura finaliza cuando se ingresa una distancia recorrida igual a 0 km, que no debe
procesarse.
b. Realizar un módulo que reciba el vector generado en a) e informe:
- El monto promedio transportado de los viajes realizados
- La distancia recorrida y el día del mes en que se realizó el viaje que transportó más
dinero.
procesar(v:vector, var monto_prom:real, var max_monto_dist, var max_monto_dia)
	var maxMonto:integer
Nota: para realizar el inciso b, el vector debe recorrerse una única vez.
c. Realizar un módulo que reciba el vector generado en a) y elimine todos los viajes cuya
distancia recorrida sea igual a 100 km.}

program ej11;
const dimF = 200;
type
	dias = 1 .. 31;

	registro_viaje = record
		dia : dias;
		monto : Real;
		distancia : Real;
	end;
		
	vector_viajes = array [1..dimF] of registro_viaje; 	

procedure leerViaje(var v:registro_viaje);
	begin
	with v do begin
		writeln('------------');
		writeln('Dia del mes'); readln(dia);		
		writeln('Monto'); readln(monto);		
		writeln('Distancia'); readln(distancia);		
	end;
	end;
procedure cargarDatos(var v:vector_viajes; var dimL:Integer);
	var viaje:registro_viaje;
	begin
		dimL := 0;
		leerViaje(viaje);
		while ((viaje.distancia<>0) and (dimL < dimF)) do begin
			dimL := dimL + 1;
			v[dimL] := viaje;
			leerViaje(viaje);
		end; 
	end;

procedure procesarMaxProm(v:vector_viajes; dimL:Integer);
	var totalMontos, maxMonto, monto_prom, max_monto_dist:real;
			i, max_monto_dia:Integer;
	begin
		totalMontos := 0;
		maxMonto := 0;
		for i:=1 to dimL do begin
			totalMontos := totalMontos + v[i].monto;
			if v[i].monto >= maxMonto then begin
				maxMonto := v[i].monto;
				max_monto_dia := v[i].dia;
				max_monto_dist := v[i].distancia;
			end;
		end;
		monto_prom := totalMontos/dimL;
		writeln('El monto promedio transportado fue de ', monto_prom:4:2, ' pesos.');
		writeln('El dia que se transporto el mayor monto fue el ',max_monto_dia, ' y se recorrieron ', max_monto_dist:4:2, ' km.');
	end;	

	procedure eliminarViaje(var v:vector_viajes; var dimL:Integer; pos:integer);
	var i:Integer;
	begin
		for i:=pos to (dimL - 1) do
			v[i] := v[i + 1];
		dimL := dimL - 1;
	end;

	procedure eliminarPorDist(var v:vector_viajes; var dimL:Integer);
	var i:Integer;
	begin
		for i:=1 to dimL do
			while(v[i].distancia = 100) do begin
				eliminarViaje(v, dimL, i);
				writeln('Se elimino un viaje del vector');
			end;
	end;


var vect:vector_viajes;
		dimL : Integer;
begin
	cargarDatos(vect, dimL);
	procesarMaxProm(vect, dimL);
	eliminarPorDist(vect, dimL);
end.