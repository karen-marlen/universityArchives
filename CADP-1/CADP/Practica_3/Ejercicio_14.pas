program ejercicio_14;
procedure informar(mas_seis,min1_cod,min2_cod:integer;min1_precio,min2_precio:double);
begin
  writeln('Cantidad con mas de diesciseis pesos y par: ',mas_seis);
  writeln('Primer codigo minimo: ',min1_cod,' $',min1_precio:1:2);
  writeln('Segundo codigo minimo: ',min2_cod, ' $',min2_precio:1:2);
end;

procedure calcular_mas_baratos(var min2_cod,min1_cod:integer;var min1_precio,min2_precio:double;precio:double;codigo:integer);
begin
  if(precio<min1_precio)then begin
    min2_cod:=min1_cod;
    min1_precio:=precio;
    min1_cod:=codigo;
  end
  else
  if(precio<min2_precio)then begin
    min2_precio:=precio;
    min2_cod:=codigo;
  end;
end;

procedure mas_dieciseis(codigo:integer;precio:double;var mas_seis:integer);
begin
  if(codigo MOD 2 =0) and (precio>16) then
    mas_seis:=mas_seis+1;
end;
var
  codigo:integer;
  precio:double;
  i:integer;
  min1_cod,min2_cod:integer;
  min1_precio,min2_precio:double;
  mas_seis:integer;
begin
  min1_precio:=999;
  min2_precio:=999;
  min1_cod:=999;
  min2_cod:=999;
  mas_seis:=0;
  for i:=1 to 5 do begin
    write('Ingrese el codigo del producto: ');
    readln(codigo);
    write('Ingrese el precio del producto: ');
    readln(precio);
    calcular_mas_baratos(min2_cod,min1_cod,min1_precio,min2_precio,precio,codigo);
    mas_dieciseis(codigo,precio,mas_seis);
  end;
  Informar(mas_seis,min1_cod,min2_cod,min1_precio,min2_precio);
  readln;
end.
