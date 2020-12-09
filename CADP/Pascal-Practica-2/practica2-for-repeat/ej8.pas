program ej8;
var contador_ventas, dia, dia_max_ventas: Integer;
ventas_del_dia, ventas_mes, maximo_ventas, monto: Real; 
begin
	ventas_del_dia := 0;
	ventas_mes := 0;
	maximo_ventas := 0;

	for dia:=1 to 10 do 
	begin
		contador_ventas := 0;
		ventas_del_dia := 0;
		writeln('Ingrese el monto de la venta: '); 
			readLn(monto);
		while (monto <> 0) do 
		begin
			ventas_del_dia := ventas_del_dia + monto;
			ventas_mes := ventas_mes + monto;
			contador_ventas := contador_ventas + 1;
			writeln('Ingrese el monto de la venta: '); 
			readLn(monto);
		end;
		writeln('En el dia ', dia, ' se concretaron ', contador_ventas, ' ventas.');
		{Esto informa el dia de mayor cantidad de OPERACIONES, no de mayor recaudacion}
		if (ventas_del_dia > maximo_ventas) then
		begin 
		maximo_ventas := ventas_del_dia;
		dia_max_ventas := dia;
		end;
	end;	
	writeln('El monto total acumulado de ventas en todo el mes fue de ', ventas_mes:8:2, ' pesos.');
	writeln('El dia de mayor cantidad de ventas fue el dia ', dia_max_ventas);
end.


{for dia:=1 to 31 days
	contador_ventas := 0
	ventas_del_dia := 0
  mientras no se ingrese 0
  		ingresar monto
  		sumar monto a ventas_mes
  		sumar venta al contador_ventas
  		sumar monto a ventas_del_dia
  informar contador_ventas
	ventas_del_dia > a maximo_ventas? --> entonces dia_max_ventas := dia
  		
  		}