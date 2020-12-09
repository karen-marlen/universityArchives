program ejercicio_4;
const
  precioMBS=1.35;
  precioMinutos=3.40;
type
  cliente=record
    codigo:integer;
    cantidad_lineas:integer;
  end;
  linea=record
    numero:longint;
    cant_minutos:integer;
    cant_MBs:integer;
  end;

procedure leerLinea(var regLinea:linea);
begin
  write('Ingrese el numero de la linea: ');
  readln(regLinea.numero);
  write('Ingrese la cantidad de minutos consumidos en la linea: ');
  readln(regLinea.cant_minutos);
  write('Ingrese la cantidad de MBs consumidos en la linea: ');
  readln(regLinea.cant_MBs);
end;

procedure leerCliente(var regCliente:cliente);
begin
  write('Ingrese el codigo de cliente: ');
  readln(regCliente.codigo);
  write('Ingrese la cantidad de lineas que tiene el cliente: ');
  readln(regCliente.cantidad_lineas);
end;

procedure calcular_cliente(var regCliente:cliente;var regLinea:linea; var totalMinutos:double;var totalMBS:double);
var
  i:integer;
begin
  leerCliente(regCliente);
  for i:=1 to regCliente.cantidad_lineas do begin
    leerLinea(regLinea);
    totalMBS:=totalMBS+(precioMBS*regLinea.cant_MBs);
    totalMinutos:=totalMinutos+(precioMinutos*regLinea.cant_minutos);
  end;
end;

var
  regCliente:cliente;
  regLinea:linea;
  totalMinutos:double;
  totalMBS:double;
  i:integer;
begin
  for i:=1 to 3 do begin
    totalMinutos:=0;
    totalMBS:=0;
    calcular_cliente(regCliente,regLinea,totalMinutos,totalMBS);
    writeln('El precio total de los MBS consumidos del cliente ',regCliente.codigo,' es: ',totalMBS:1:2);
    writeln('El precio total de los minutos consumidos del cliente ',regCliente.codigo,' es: ',totalMinutos:1:2);
    writeln;
    writeln('FIN DEL PROGRAMA');
    readln;
  end;

end.
