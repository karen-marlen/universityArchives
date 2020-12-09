program ejercicio_2;
type
  fecha=record
    dia:integer;
    mes:integer;
    anio:integer;
  end;
procedure LeerFecha(var reg:fecha);
begin
  write('Ingre el dia: ');
  readln(reg.dia);
  write('Ingrese el mes: ');
  readln(reg.mes);
  write('Ingrese el anio: ');
  readln(reg.anio);
end;

var
  reg:fecha;
  cant_diez,cant_verano:integer;
begin
  cant_diez:=0;
  cant_verano:=0;
  LeerFecha(reg);
  while(reg.anio<>2018) do begin
    if((reg.mes>=1) and (reg.mes<=3))then
      cant_verano:=cant_verano+1;
    if((reg.dia>=1) and (reg.dia<=10)) then
      cant_diez:=cant_diez+1;
    LeerFecha(reg);
  end;
  writeln('La cantidad de casamientos realizados en verano es: ',cant_verano);
  writeln('La cantidad de casamientos realizados dentro de los 10 primeros dias es: ',cant_diez);
  readln;
end.
