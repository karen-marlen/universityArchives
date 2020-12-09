program programadores;
procedure leerDatos(var legajo:integer; salario:real);
begin
  writeln('Ingrese el nro de legajo y el salario');
  readln(legajo);
  readln(salario);
end;
procedure actualizarMaximo(nuevoLegajo:integer; nuevoSalario: real; var maxLegajo:integer);
var
  maxSalario:real;
begin
  if(nuevoLegajo> maxLegajo)then begin
    maxLegajo:=nuevoLegajo;
    maxSalario:=nuevoSalario
  end;
end;
var
  legajo,maxLegajo,i:integer;
  salario,maxSalario:real;
begin
  sumaSalarios:=0;
  for i:=1 to 130 do begin
    leerDatos(salario,legajo);
    actualizarMaximo(legajo,salario,maxLegajo);
    sumaSalarios:=sumaSalarios + salario;
  end;
  writeln('En todo el mes se gastan ',sumaSalarios, ' pesos');
  writeln('El salario del empleado mas nuev es ',maxSalario);
end.

{
Error linea 21, la variable sumaSalarios no esta declarada.
Error linea 23, los argumentos pasados no corresponen con el tipo de dato que se espera en leerDatos()
Error linea 2 en procedure leerDatos. La variable salario es pasada por valor, es decir el input leido no modifica la variable en el main. Error semantico.
Error linea 12, maxLegajo no tiene valor por lo que hacer la comparacion con nuevoLegajo es imposible.
Error linea 25, sumaSalarios  no esta declarada, no es posible hacer la asignacion. Ademas salario tampoco tiene valor.
Error linea 27, sumaSalarios no esta decalarada...
Error linea 28, maxSalario no esta inicializado.

}
