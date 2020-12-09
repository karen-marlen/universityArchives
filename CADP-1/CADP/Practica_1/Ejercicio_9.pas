program ejercicio_9;
var
  signo:char;
  numero:integer;
  total:integer;
begin
  write('Ingrese la operacion a realizar: ');
  readln(signo);
  if(signo='-') or (signo='+') then begin
    write('Ingrese un numero: ');
    readln(numero);
    if(signo='+')then begin
      total:=0;
      while(numero<>0)do begin
        total:=total+numero;
        write('Ingrese otro numero: ');
        readln(numero);
      end;
    end
    else
      if(signo='-') then begin
        total:=numero;
        write('Ingrese otro numero: ');
        readln(numero);
        while(numero<>0)do begin
          total:=total-numero;
          write('Ingrese otro numero: ');
          readln(numero);
        end;
      end;
    writeln('El total es: ',total);
  end
  else
    writeln('Error');
  readln;
end.
