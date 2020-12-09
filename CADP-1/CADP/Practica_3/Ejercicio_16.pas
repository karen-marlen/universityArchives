program ejercicio_16;
function cumpleA(caracter:char):boolean;
begin
  if(caracter<>'$')then
    cumpleA:=true
  else
    cumpleA:=false;
end;

function noCumpleCorteA(caracter:char):boolean;
begin
  if(caracter<>'%')then
    noCumpleCorteA:=true
  else
    noCumpleCorteA:=false;
end;

procedure secuencia_A(var cant_A:integer;var ok:boolean);
var
  caracter:char;
begin
  readln(caracter);
  while(cumpleA(Caracter)) and (noCumpleCorteA(caracter))do begin
    cant_A:=cant_A+1;
    readln(caracter);
  end;
  if(cumpleA(caracter)=false)then begin  //Es decir, el caracter es $
    writeln('No se cumple la secuencia en A');
    ok:=false;
  end
  else
    ok:=true;
end;

function cumpleB(cant_A:integer;cant_charEspecial:integer;i:integer):boolean;
begin
  if((i>cant_A) or (cant_charEspecial>3)) then
    cumpleB:=false
  else
    cumpleB:=true;
end;

function noCumpleCorteB(caracter:char):boolean;
begin
  if(caracter<>'*')then
    noCumpleCorteB:=true
  else
    noCumpleCorteB:=false;
end;

procedure secuencia_B(cant_A:integer; var ok:boolean);
var
  caracter:char;
  cant_charEspecial:integer;
  i:integer;
begin
  cant_charEspecial:=0;
  readln(caracter);
  if(caracter= '@') then
    cant_charEspecial:=cant_charEspecial+1;
  i:=1; //contador caracteres actuales
  while(cumpleB(cant_A,cant_charEspecial,i)) and (noCumpleCorteB(caracter)) do begin
    readln(caracter);
    if(caracter= '@') then
      cant_charEspecial:=cant_charEspecial+1;
    writeln(cant_charEspecial);
    i:=i+1;
  end;
  if(noCumpleCorteB(caracter))then begin //
    writeln('No se cumple la secuencia en B');
    ok:=false;
  end
  else
    ok:=true;
end;

var
  cant_A:integer;
  ok:boolean;
begin
  cant_A:=0;
  writeln('Ingrese la primer secuencia de caracteres: ');
  secuencia_A(cant_A,ok);
  if(ok) then begin
    writeln('Ingrese la segunda secuencia de caracteres: ');
    secuencia_B(cant_A,ok);
  end;
  if(ok)then
    writeln('Ambas secuencias son correctas, se termina el programa');
  readln;
end.
