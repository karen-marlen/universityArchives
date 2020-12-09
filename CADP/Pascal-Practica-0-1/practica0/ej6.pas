program ej6;
var monto, dolar_hoy, com, transaccion: Real;
begin
	writeln('Ingrese el monto de la transaccion, el precio del dolar hoy, y la comision: ');
	read(monto, dolar_hoy, com);
	com := 1 + com/100;
  transaccion := monto*dolar_hoy*com;
	write('La transaccion sera de ', transaccion:10:2, ' pesos argentinos.')
end.