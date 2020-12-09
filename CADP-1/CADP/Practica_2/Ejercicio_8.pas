program ejercicio_8;
var
  i:integer;
  monto:double;
  total_mes:double;
  total_dia:double;
  dia_mayor:integer;
  cant_ventas:integer;
  cant_dia_mayor:integer;
begin
  total_mes:=0;
  cant_dia_mayor:=-999;
  for i:=1 to 5 do begin
    cant_ventas:=0;
    total_dia:=0;
    writeln('Dia ',i);
    write('Ingrese monto: ');
    readln(monto);
    while(monto<>0)do begin
      total_dia:=total_dia+monto;
      cant_ventas:=cant_ventas +1;
      write('Ingrese otro monto: ');
      readln(monto);
    end;
    total_mes:=total_mes + total_dia;
    if(cant_ventas>cant_dia_mayor) then begin
      dia_mayor:=i;
      cant_dia_mayor:=cant_ventas;
    end;
    writeln('Ventas del dia ',i,': ',cant_ventas);
    writeln('-------- CIERRE DEL DIA --------'); //Se leyo el monto 0 por lo que se cambia de dia
    writeln;
  end;
  writeln('Monto total acumulado en ventas durante el mes: ',total_mes:1:2);
  writeln('El dia con mayor cantidad de ventas fue: ',dia_mayor);   //Punto a)
  readln;
end.
