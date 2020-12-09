program ej2;
type
	fecha_mes = (Ene, Feb, Mar, Abr, May, Jun, Jul, Ago, Sep, Oct, Nov, Dic);
	dia_numero = 1 .. 31;
	date = record
		dia:dia_numero;
		mes:fecha_mes;
		ano:Integer;
		verano:Boolean;
	end;
	
procedure leerFecha(var fecha : date);
	begin
		writeln('Ingrese el año '); readln(fecha.ano);
		if (fecha.ano <> 2018) then begin
		writeln('Ingrese el numero de dia '); readln(fecha.dia);
		writeln('Ingrese el mes '); readln(fecha.mes);
		writeln('------------------------------------');
		fecha.verano := ((fecha.mes >= Ene) and (fecha.mes <= Mar));
		end;
	end;

procedure actualizarVerano(verano:Boolean; var contador:integer);
	begin
		if verano then
		contador := contador + 1;
	end;
procedure actualizarDiez(dia:integer; var contador:integer);
	begin
		if ((dia >=1) and (dia <= 10)) then
		contador := contador + 1;
	end;

var fecha : date;
contadorVerano:Integer;
contadorPrimerosDiez:integer;
begin
	contadorVerano:=0;
	contadorPrimerosDiez:=0;
	leerFecha(fecha);
	while(fecha.ano <> 2018) do begin
		actualizarVerano(fecha.verano, contadorVerano);
		actualizarDiez(fecha.dia, contadorPrimerosDiez);
		leerFecha(fecha);	
	end;
	writeln('La cantidad de casamientos en verano fue de ', contadorVerano);
	writeln('La cantidad de casamientos en los primeros 10 dias de cada mes fue de ', contadorPrimerosDiez);

	{writeln(fecha.dia, ' de ', fecha.mes, ' de ', fecha.ano);}
end.




{El registro civil de La Plata ha solicitado un programa para analizar la distribución de casamientos
durante el año 2017. Para ello, cuenta con información de las fechas de todos los casamientos
realizados durante ese año.
A) Analice y defina un tipo de datos adecuado para almacenar la información de la fecha de cada
casamiento.
type 

dia_numero = 1 .. 31;
fecha = record;
	dia : dia_numero
	mes : string
	año : integer;
end;

B) Implemente un módulo que lea una fecha desde teclado y la retorne en un parámetro cuyo tipo
es el definido en A).
C) Implementar un programa que lea la fecha de todos los casamientos realizados en 2017. La
lectura finaliza al ingresar el año 2018, que no debe procesarse e informe la cantidad de
casamientos realizados durante los meses de verano (enero, febrero y marzo) y la cantidad de
casamientos realizados en los primeros 10 días de cada mes. Nota: utilizar el módulo realizado en
B) para la lectura de fecha.}

{
	1- leer fecha de todos los casa de 2017
	2- finaliza al ingresar año 2018 (sin procesarse): 
		while(fecha.ano <>2018) procesar

	3- informar cantidad de casamientos en enero febrero y marzo. (contador)
	proceso contadorVerano(mes_ingresado:string, var casamientosVerano)
		si (mes_ingresado = enero) or (mes_ingresado = febrero) or (mes_ingresado = marzo)
		entonces --> casamientosVerano ++

	4- informar cantidad realizados en los primeros 10 dias. (contador)
}