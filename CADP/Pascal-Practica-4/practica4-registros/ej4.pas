program ej4;

type
	linea = record
		numero : integer;
		minutos : integer;
		datos : integer;
	end;
	cliente = record
		codigo : Integer;
		cant_lineas : Integer;
	end;
	factura = record
		total_minutos : Real;
		total_datos : Real;
	end;

	procedure leerLinea(var info_linea:linea);
	begin
		with info_linea do begin
		writeln('-----------Nueva Linea------------');
			write('Numero de esta linea: '); readln(numero);
			write('Minutos de esta linea: '); readln(minutos);
			write('Datos de esta linea: '); readln(datos);
		end;
	end;

	procedure facturarLinea(info_linea:linea; costo_min:Real; costo_datos:Real; var factura:factura);
		begin
			factura.total_minutos := factura.total_minutos + info_linea.minutos*costo_min;
			factura.total_datos := factura.total_datos + info_linea.datos*costo_datos;
		end;

	procedure procesarCliente(var nuevo_cliente:cliente; var nueva_linea:linea;var factura:factura;costo_min:Real;costo_datos:Real);
	var i:integer;
	begin
		writeln('Codigo de cliente:'); readln(nuevo_cliente.codigo);
		writeln('Cantidad de lineas:'); readln(nuevo_cliente.cant_lineas);
		for i:=1 to nuevo_cliente.cant_lineas do begin
			leerLinea(nueva_linea);
			facturarLinea(nueva_linea, costo_min, costo_datos, factura);
		end;
		writeln('La cantidad total a facturar por minutos consumidos es de: ', factura.total_minutos:4:2);
		writeln('La cantidad total a facturar por datos consumidos es de : ', factura.total_datos:4:2);
	end;



const 
	costo_datos = 1.35;
	costo_min = 3.4;
var
	nueva_linea: linea;
	nuevo_cliente: cliente;
	nueva_factura:factura;
begin
	nueva_factura.total_datos:=0;
	nueva_factura.total_minutos:=0;
	procesarCliente(nuevo_cliente, nueva_linea, nueva_factura, costo_min, costo_datos);
end.


//	Estructura de datos 'cliente':
{
	codigo:integer;
	cant_lineas:integer;
}
//	Estructura de datos 'lineas':
{
	numero: integer;
	minutos: integer;
	datos: integer;
}
//
	
{Modulo leerLinea(var info_linea:linea)
	leer ---> numero: integer;
						minutos: integer;
						datos: integer;
}

{Modulo facturar(info_linea, costo_min, costo_datos, var total_min, var total_dat_)
		total_min:=costo_min*info_linea.minutos;
		total_dat:=costo_datos*info_linea;
}

{
	ingresar cliente.codigo
	ingresar cliente.cant_lineas
	for i=1 to cliente.cant_lineas
		leerLinea()
		facturar()
}