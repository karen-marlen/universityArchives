program ej6;
type 
	microprocesador = record
		marca:string;
		linea:string;
		nucleos:integer;
		velocidad:Real;
		tamano: integer	
	end;

	maximos = record
		marca1: string;
		marca2: string;
		max1: integer;
		max2: integer;
	end;
	
procedure leer(var micro:microprocesador);
	begin
		with micro do begin
			writeln('Marca: '); readln(marca);
			writeln('Linea'); readln(linea);
			writeln('Nucleos'); readln(nucleos);
			if (nucleos <> 0) then begin
			writeln('Velocidad'); readln(velocidad);
			writeln('Tamaño'); readln(tamano);
			end;
			writeln('----------');
		end;
	end;

{Informar todos los de mas de 2 nucleos y transistores de a lo sumo 22 nm}
procedure nucleoYtamano(micro:microprocesador);
	var cumple : boolean;
begin
	cumple := ((micro.nucleos > 2) and (micro.tamano <= 22));
	if (cumple) then
	writeln('El procesador ',micro.marca, ' ', micro.linea, ' tiene mas de 2 nucleos y transistores a lo sumo de 22 nm.');
end;

{Actualizar el contador global con la cantidad de procesadores Intel o AMD multinucleo y > a 2.0 GHz}
procedure actualizarIntelAMD(micro:microprocesador; var contador:integer);
var cumple : boolean;
begin
	cumple := ((micro.marca = 'AMD') or (micro.marca = 'Intel')) and (micro.nucleos > 1) and (micro.velocidad >= 2);
	if (cumple) then
	contador := contador + 1;
end;
{Actualiza las 2 marcas con mayor cantidad de procesadores con transis de 14 nm}
procedure actualizarMax(var max:maximos; micro:microprocesador; contadorCatorceNm:integer);
	begin
		with max do begin
			if (contadorCatorceNm >= max1) then begin
					max.marca2 := max.marca1;
					max.max2 := max.max1;
					max.marca1 := micro.marca;
					max.max1 := contadorCatorceNm;
					end
				else begin 
					if (contadorCatorceNm >= max2) then begin
						max.marca2 := micro.marca;
						max.max2 := contadorCatorceNm;
					end;
				end;
		end;
	end;
{actualiza el contador de procesadores con 14 nm}
procedure actualizarContadorNm(var contador:integer; tamano:integer);
	begin
		if (tamano = 14) then
		contador := contador + 1;
	end;
{inicializo variable de tipo registro de maximos}
procedure initMax(var max:maximos);
	begin
		with max do begin
			marca1 := '';
			marca2 := '';
			max1 := 0;
			max2 := 0;
		end;
	end;

var 
micro : microprocesador;
max : maximos;
contadorIntelAMD : integer;
marca : string;
contadorCatorceNm: integer;

begin
	initMax(max);
	contadorIntelAMD := 0; 
	leer(micro);
	while(micro.nucleos <> 0) do begin
		marca := micro.marca;	
		contadorCatorceNm := 0;
		while ((micro.nucleos <> 0 ) and (marca = micro.marca)) do begin
			nucleoYtamano(micro);
			actualizarIntelAMD(micro, contadorIntelAMD);
			actualizarContadorNm(contadorCatorceNm, micro.tamano);
			actualizarMax(max, micro, contadorCatorceNm);
			leer(micro);
		end;
	end;
writeln('La cantidad de procesadores multicore Intel o AMD con velocidades de al menos 2 GHz fue de ', contadorIntelAMD);
writeln('Las dos marcas con mayor cantidad de procesadores de 14 nm fueron ', max.marca1, ' y ', max.marca2);
	
end.




{
	modelo: 
	- marca
	- linea
	- nucleos
	- velovidad
	- tamano

	1)Leer informacion de los micros: Se lee de forma consecutiva por marca, finaliza
	al ingresa procesador con 0 nucleos, no se procesa (while).
	registro:microprocesador
	proceso leerDatos(micros:microprocesador);
	begin
		leer maca, linea, nucleos, velocidad y tamaño.
	end

	main progm: 
	leerDatos()
		while(nucleo <> 0) do 
			inicializo variables

		


	2) Informar: marca y linea (2 variables) de procesadores > 2 cores y <= 22 nm
	3) Informar: 2 marcas con mayor cantidad de proc de 14 nm.. (2 maximos)
	registro: maxCant
	marca1
	marca2
	cant1
	cant2
	proceso initMax(maximos) marca1: '' marca2: '' max1:1 max2:0

	4) Informar: cantidad de procesadores (contador) AMD o Intel (nucleos > 1) and (velocidad >= 2)

	contadorIntelAMD:integer
	proceso actualizarIntelAMD(micro:microprocesador; var contador:integer);
		var
			IntelAMD:boolean
		begin
		with micro do begin
	  IntelAMD:= (marca = AMD or marca = Intel) and (nucleos > 1) and (velocidad >= 2)
		if IntelAMD then
			contador := contador + 1
		end

}

{Leo un microprocesador
inicializo 
}