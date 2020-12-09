program ejercicio_8;
var
  car_uno,car_dos,car_tres:char;
  esVocal1,esVocal2,esVocal3:boolean;
begin
  readln(car_uno);
  readln(car_dos);
  readln(car_tres);
  esVocal1:=false;
  esVocal2:=false;
  esVocal3:=false;
  esVocal1:=((car_uno='a') or (car_uno='e') or (car_uno='i') or (car_uno='o') or (car_uno='u'));
  esVocal2:=(car_dos='a') or (car_dos='e') or (car_dos='i') or (car_dos='o') or (car_dos='u');
  esVocal3:=(car_tres='a') or (car_tres='e') or (car_tres='i') or (car_tres='o') or (car_tres='u');
  if(esVocal1) and (esVocal2) and (esVocal3) then
    writeln('Los tres son vocales')
  else
    writeln('Al menos uno no es vocal');
  readln;
end.
