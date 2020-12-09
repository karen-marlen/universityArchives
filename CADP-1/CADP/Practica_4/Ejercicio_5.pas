program ejercicio_5;
type
  cadena=string[40];
  candidato=record
    localidad:cadena;
    apellido:cadena;
    cant_votos:integer;
    cant_votanteslocalidad:integer;
  end;

procedure leerCandidato(var reg:candidato);
begin
  write('Ingrese la localidad: ');
  readln(reg.localidad);
  write('Ingrese el apellido del candidato: ');
  readln(reg.apellido);
  write('Ingrese la cantidad de votos que obtuvo: ');
  readln(reg.cant_votos);
  write('Ingrese la cantidad de votantes en la localidad: ');
  readln(reg.cant_votanteslocalidad);
end;

procedure mayorCantidadVotos(var maxCantidad:integer;reg:candidato;var nombreMax:cadena);
begin
  if(reg.cant_votos>maxCantidad)then begin
    maxCantidad:=reg.cant_votos;
    nombreMax:=reg.apellido;
  end;
end;

procedure mayorPorcentajeVotos(var maxPorcentaje:double;reg:candidato;var nombreMax:cadena);
begin
  if(((reg.cant_votos/reg.cant_votanteslocalidad)*100)>maxPorcentaje) then begin
    maxPorcentaje:=(reg.cant_votos/reg.cant_votanteslocalidad*100);
    nombreMax:=reg.apellido;
  end;
end;

var
  reg:candidato;
  mayor_CantVotos:integer;
  mayor_PorcentajeVotos:double;
  nombreMaxCantVotos:cadena;
  nombreMaxPorcentaje:cadena;
begin
  mayor_CantVotos:=-999;
  mayor_PorcentajeVotos:=-999;
  nombreMaxCantVotos:=' ';
  nombreMaxPorcentaje:= ' ';
  repeat
    leerCandidato(reg);
    mayorCantidadVotos(mayor_CantVotos,reg,nombreMaxCantVotos);
    mayorPorcentajeVotos(mayor_PorcentajeVotos,reg,nombreMaxPorcentaje);
  until(reg.localidad='Zarate');
  writeln('El intendente que obtuvo la mayor cantidad de votos es: ',nombreMaxCantVotos);
  writeln('El intendente que obtuvo el mayor porcentaje de votos es: ',nombreMaxPorcentaje);
  readln;
end.
