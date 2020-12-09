program ej2;
	type
		vuelo = record
			codigo : Integer;
			origen : String;
			destino : String;
			km : Real;
			ocup : Real;
		end;

		maximos = record {0 Km-----max2----max1---9999999 km}
			codigo1 : Integer;
			codigo2 : Integer;
			max1 : Real;
			max2 : Real;
		end;

		minimos = record {0 Km----min1-----min2}
			codigo1 : Integer;
			codigo2 : Integer;
			min1 : Real;
			min2 : Real;
		end;

procedure leerVuelo(var vuelo:vuelo);
	begin
	with vuelo do begin
		
		writeln('--- Nuevo Vuelo ---');
		writeln('Codigo'); readln(codigo);
		if (codigo <> 44) then begin
		writeln('Origen'); readln(origen);
		writeln('Destino'); readln(destino);
		writeln('Kilometros recorridos'); readln(km);
		writeln('Ocupacion'); readln(ocup);
		end;
	end;
	end;

procedure maxInit(var max:maximos);
	begin
		with max do begin
			codigo1 := -1;
			codigo2 := -1;
			max1 := -1;
			max2 := -1;
		end;
	end;

procedure minInit(var min:minimos);
	begin
		with min do begin
			codigo1 := -1;
			codigo2 := -1;
			min1 := 32767;
			min2 := 32767;
		end;
	end;

procedure actualizarMaxKm(var max:maximos; codigo_actual:integer; kms_actual:real);
	begin
		if kms_actual >= max.max1 then begin
			max.codigo2 := max.codigo1;
			max.max2 := max.max1;
			max.max1 := kms_actual;
			max.codigo1 := codigo_actual;
		end
		else if kms_actual >= max.max2 then begin
			max.max2 := kms_actual;
			max.codigo2 := codigo_actual;
		end;
	end;

	procedure actualizarMinKm(var min:minimos; codigo_actual:integer; kms_actual:real);
	begin
		if kms_actual <= min.min1 then begin
			min.min2 := min.min1;
			min.codigo2 := min.codigo1;
			min.min1 := kms_actual;
			min.codigo1 := codigo_actual;
		end
		else if kms_actual <= min.min2 then begin
			min.min2 := kms_actual;
			min.codigo2 := codigo_actual;
		end;
	end;


	procedure actualizarOcupacionMenorA60(var contador:Integer; ocupacion:real; km:real);
		begin
			if ((ocupacion < 0.6) and (km > 5000)) then
			contador := contador + 1;
		end;


	procedure actualizarAutraliaNZ(var contador:Integer; destino:string; km:real);
	var oceania : Boolean;

	begin
	oceania := ((destino = 'Australia') or (destino = 'Nueva Zelanda'));
	if (oceania and (km < 10000)) then
		contador := contador + 1;
	end;


	procedure actualizarOrigenesDistintos(var codigoMax:Integer; var cantidadMax:Integer;cantidad_actual:integer; codigo_actual:Integer);
	begin
		if cantidad_actual >= cantidadMax then begin
			codigoMax := codigo_actual;
			cantidadMax := cantidad_actual;		
		end;
	end;

var v:vuelo;
		codigo_actual, totalOrigenesDistintos, maxOrigenesDistintos, codigoMaxOrigenesDistintos:Integer;
		kmRecorridos: real;
		origen_actual : String;
		maxKm : maximos;
		minKm : minimos;
		ocupacionMenorA60 : Integer;
		cantidadAustraliaNZ : Integer;

begin
	ocupacionMenorA60 := 0;
	cantidadAustraliaNZ := 0;
	minInit(minKm);
	maxInit(maxKm);
	maxOrigenesDistintos := 0;
	codigoMaxOrigenesDistintos:=-1;
	leerVuelo(v);
	while (v.codigo <> 44) do begin
		kmRecorridos := 0;
		totalOrigenesDistintos := 0;
		codigo_actual := v.codigo;
		while ((v.codigo = codigo_actual) and (v.codigo <> 44)) do begin
			origen_actual := v.origen;
			totalOrigenesDistintos := totalOrigenesDistintos + 1;
			while ((v.origen = origen_actual) and (v.codigo <> 44)) do begin
				kmRecorridos := kmRecorridos + v.km;
				actualizarOcupacionMenorA60(ocupacionMenorA60, v.ocup, v.km);
				actualizarAutraliaNZ(cantidadAustraliaNZ, v.destino, v.km);
				leerVuelo(v)
			end;
		end;
		actualizarMaxKm(maxKm, codigo_actual, kmRecorridos);
		actualizarMinKm(minKm, codigo_actual, kmRecorridos);		
		actualizarOrigenesDistintos(codigoMaxOrigenesDistintos, maxOrigenesDistintos, totalOrigenesDistintos, codigo_actual);
	end;
	writeln('Los dos aviones que mas kilometros recorrieron fueron ', maxKm.mnombre1, ' y ', maxKm.nombre1);
	writeln('Los dos aviones que menos kilometros recorrieron fueron ', minKm.nombre1, ' y ', minKm.nombre1);
	writeln('El avion que salio desde mas paises distintos fue ', codigoMaxOrigenesDistintos);
	writeln('La cantidad de vuelos de mas de 5000 km que no alcanzaron el 60% de ocupacion fueron ', ocupacionMenorA60);
	writeln('La cantidad de vuelos de menos de 10000 km que llegaron a Australia o Nueva Zelanda fueron ', cantidadAustraliaNZ);
end.


{Una compañía de vuelos internacionales está analizando la información de todos los vuelos realizados por sus
aviones durante todo el año 2019. De cada vuelo se conoce el código de avión, país de salida, país de llegada,
cantidad de kilómetros recorridos y porcentaje de ocupación del avión. La información se ingresa ordenada
por código de avión y, para cada avión, por país de salida. La lectura finaliza al ingresar el código 44. Informar:
a. Los dos aviones que más kilómetros recorrieron, y los dos aviones que menos kilómetros recorrieron
b. El avión que salió desde más países diferentes
c. La cantidad de vuelos de más de 5.000 km que no alcanzaron el 60% de ocupación del avión
d. La cantidad de vuelos de menos de 10.000 km que llegaron a Australia o a Nueva Zelanda.
}