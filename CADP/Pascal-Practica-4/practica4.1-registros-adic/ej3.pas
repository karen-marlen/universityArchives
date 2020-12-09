{La Organización Mundial de la Salud (OMS) está simulando la evolución de un nuevo virus que parece
propagarse a gran velocidad por todo el planeta. Para realizar esta simulación, debe procesar la información
recopilada por todos los países durante los últimos 30 días. La información se ingresa ordenada por país, hasta
el país Zimbabue que debe procesarse (repeat until). Para cada país se ingresa el nombre del país, la cantidad total de
habitantes, y para cada uno de los 30 días (for 1 to 30) se ingresa la cantidad de nuevos casos confirmados, la cantidad de
fallecidos y la cantidad de casos dados de alta (personas curadas). Informar:
a. La cantidad de países en los que la cantidad total de infectados supera el 1% de su población
		
		// AL FINALIZAR LA LECTURA DE LOS 30 DIAS DE CADA PAIS
		if (p.infectados/p.habitantes > 0.01) then
			paisesMayora1Porciento ++

b. Los nombres de los dos países con mayor cantidad de fallecidos.

		// AL FINALIZAR LA LECTURA DE LOS 30 DIAS DE CADA PAIS
		actualizarMaxFallecidos(maxFallecidos; p.nombre, p.fallecidos)

c. El nombre de los países donde la epidemia está en retroceso (la cantidad total de casos confirmados
es menor que la suma entre personas curadas y personas fallecidas)

		// AL FINALIZAR LA LECTURA DE LOS 30 DIAS DE CADA PAIS						
				function retroceso(confirmados, curados, fallecidos):boolean
				retroceso := confirmados < (curados + fallecidos)
		---> if retroceso then 
						informar('Pais en retroceso')

d. Para cada país ​ y ​ por cada día ​ X ​ , si la cantidad de nuevos infectados es mayor o igual al doble del día
anterior, imprimir en pantalla el siguiente mensaje:
Alerta epidemiológica: País <y>. Dia <X>. Incremento: < INFECTADOS DIA X > / <INFECTADOS DIA X-1>
Por ejemplo, si en el país España se registraron 130 infectados en el día 3, y 283 infectados en el día 4,
el mensaje debería indicar: "​ Alerta epidemiológica: País España. Dia 4. Incremento 2.17"​ (valor obtenido a
partir de 283/130).
		for 1 to 30
			
				1. leerDia:  sumar confirmados infectados y muertos
				2. chequearAlerta(pais, dia, infectados, infectadosDiaAnterior)
				3. infectadosDiaAnterior := p.infectados (dato que va a ser usado en el proximo dia)

variables necesarias-->infectadosDiaAnterior : integer. (inicializar en begin)
}

program ej3;
type
		pais = record
			nombre : string;
			habitantes : Integer;
			confirmados : Integer;
			fallecidos : Integer;
			curados : Integer
		end;

		maximos = record
			nombre1 : string;
			nombre2 : string;
			max1 : Integer;
			max2 : Integer;
		end;


procedure leerPais(var pais:pais);
	begin
		writeln('Ingrese los datos del siguiente pais:');
		with pais do begin
			writeln('Pais'); readln(nombre);
			writeln('Habitantes'); readln(habitantes);
			confirmados := 0;
			fallecidos := 0;
			curados := 0;
		end;	
	end;



procedure leerDia(var pais:pais; var confirmados_ayer:Integer);
	var nuevos_confirmados, nuevos_fallecidos, nuevos_curados : Integer;
	begin
		writeln('Nuevos casos confirmados'); readln(nuevos_confirmados);
		writeln('Nuevos casos fallecidos'); readln(nuevos_fallecidos);
		writeln('Nuevos casos curados'); readln(nuevos_curados);
		with pais do begin
		confirmados_ayer := confirmados;
		confirmados := confirmados + nuevos_confirmados;
		fallecidos := fallecidos + nuevos_fallecidos;
		curados := curados + nuevos_curados;
		end;
	end;

procedure actualizarMaxFallecidos(var max_falle:maximos; pais:string; fallecidos:Integer);
	begin
		if fallecidos >= max_falle.max1 then begin
			max_falle.max2 := max_falle.max1;
			max_falle.nombre2 := max_falle.nombre1;
			max_falle.max1 := fallecidos;
			max_falle.nombre1 := pais;
		end
		else if fallecidos >= max_falle.max2 then begin
			max_falle.max2 := fallecidos;
			max_falle.nombre2 := pais;
		end;
	end;

procedure actualizarMayora1Porciento(var contador:integer; confirmados:Integer; habitantes:Integer);
	begin		
		if ((confirmados/habitantes) > 0.01) then
		contador := contador  + 1;
	end;

function retroceso(confirmados, curados, fallecidos:Integer): boolean;
begin
	retroceso := confirmados < (curados + fallecidos);
end;

function alerta(infectados_hoy:Integer; infectados_ayer:Integer):boolean;
	begin
		alerta := (infectados_ayer <> 0) and (infectados_hoy >= (2*infectados_ayer));
	end;


var	dia, paisesMayora1Porciento, infectadosDiaAnterior : Integer;
		p : pais;
		max_fallecidos : maximos;

begin
	paisesMayora1Porciento := 0;
	repeat
		leerPais(p);

		for dia:=1 to 2 do begin
			writeln('--- Ingrese datos del dia ', dia, ' ---');
			leerDia(p, infectadosDiaAnterior);
			if (alerta(p.confirmados, infectadosDiaAnterior)) then 
				writeln('Alerta epidemiológica: País ', p.nombre,'. Dia ',dia,'. Incremento: ',(p.confirmados/infectadosDiaAnterior):4:2);
		end;

		if retroceso(p.confirmados, p.curados, p.fallecidos) then
			writeln('Pais en retroceso.');

		actualizarMayora1Porciento(paisesMayora1Porciento, p.confirmados, p.habitantes);
		actualizarMaxFallecidos(max_fallecidos, p.nombre, p.fallecidos);
	until (p.nombre = 'Zimbaue');
	writeln('La cantidad de paises en que hubo mas de 1% de infectados fue de ', paisesMayora1Porciento);
	writeln('Los dos paises con maxima cantidad de fallecidos fueron ', max_fallecidos.nombre1, ' con ', 
	max_fallecidos.max1, ' fallecidos, y ', max_fallecidos.nombre2, ' con ', max_fallecidos.max2, ' fallecidos.');

end.