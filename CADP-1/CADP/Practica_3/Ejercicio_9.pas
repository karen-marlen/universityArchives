program ejercicio_9;
procedure leer(var mas_barato,mas_caro,pantalon_masCaro:integer);
var
  precio:double;
  codigo:integer;
  tipo:String[50];   //pantalon, remera, camisa, medias, camperas
begin
  write('Ingrese el codigo del producto: ');
  readln(codigo);
  write('Ingrese el precio del producto: ');
  readln(precio);
  write('Ingrese el tipo del producto: ');
  readln(tipo);
  if(codigo<mas_barato)then
    mas_barato:=codigo;
  if(codigo>mas_caro)then
    mas_caro:=codigo;
  if((tipo='Pantalon') or (tipo='pantalon') and (precio>pantalon_masCaro))then
    pantalon_masCaro:=codigo;
end;

procedure informar(mas_barato,mas_caro,pantalon_masCaro:integer);
begin
  writeln('El codigo del producto mas barato es: ',mas_barato);
  writeln('El codigo del producto mas caro es: ',mas_caro);
  writeln('El codigo del producto de tipo pantalon mas caro es: ',pantalon_masCaro);
end;

var
  mas_barato,mas_caro:integer;
  i:integer;
  pantalon_masCaro:integer;
begin
  mas_barato:=999;
  mas_caro:=-999;
  pantalon_masCaro:=-999;
  for i:=1 to 3 do begin
    leer(mas_barato,mas_caro,pantalon_masCaro);
  end;
  informar(mas_barato,mas_caro,pantalon_masCaro);
  readln;
end.
