program ejercicio_13;
procedure calcular(radio:double;var diametro,perimetro:double);
begin
  perimetro:=2*radio*PI;
  diametro:=2*radio;
end;

procedure Leer(var radio:double;var nombre:string;var distancia:double);
begin
  write('Ingrese el radio del planeta: ');
  readln(radio);
  if(radio>0)then begin
    write('Ingrese el nombre del planeta: ');
    readln(nombre);
    write('Ingrese la distancia del planeta con respecto a la Tierra: ');
    readln(distancia);
  end;
end;

procedure Informar(nombre:string;distancia:double);
begin
  Writeln('El planeta ',nombre,' cumple condicion con una distancia de: ',distancia:1:2);
end;

var
  nombre:String[50];
  radio:double;
  distancia:double;
  diametro:double;
  perimetro:double;
  cant_superior:integer;
begin
  cant_superior:=0;
  Leer(radio,nombre,distancia);
  while(radio<>0)do begin
    calcular(radio,diametro,perimetro);
    if(diametro<= 12700) and (diametro>= 6780)then
      Informar(nombre,distancia);
    if(perimetro>439264)then
      cant_superior:=cant_superior+1;
    writeln;
    Leer(radio,nombre,distancia);
  end;
  writeln('La cantidad de planetas con un perimetro superior a Jupiter es: ',cant_superior);
  readln;
end.


