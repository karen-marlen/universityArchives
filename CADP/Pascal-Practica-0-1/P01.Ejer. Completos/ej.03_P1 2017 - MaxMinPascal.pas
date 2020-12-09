{3.Realizar un programa que lea desde teclado la información 
de los pacientes de una clínica. De cada paciente se lee DNI y edad. 
La lectura finaliza cuando llega el DNI 0, el cual no debe procesarse. 
Informar en pantalla:
a.La edad promedio de los pacientes con DNI mayor a 30000000.
b.El DNI del paciente más joven.}

program Ej3;
var
	DNI, DNI_M3, DNI_PJ, suma_edad, edad, edad_min : integer;
	promedio : real;
begin
	{Inicializo variables}
	edad := 0;
	suma_edad := 0;
	edad_min := 200;
	writeln('Ingrese DNI del paciente');
	readln(DNI);
	while(DNI <> 0) do begin
		writeln('Ingrese EDAD del paciente');
		readln(edad);
		if (DNI > 300) then begin
			suma_edad := suma_edad + edad;
		end;
		if (edad < edad_min) then begin
			DNI_PJ := DNI;
			edad_min := edad;
		end;
		writeln('Ingrese DNI del paciente');
		readln(DNI);
	end;
		promedio := suma_edad / 100;
		writeln('La edad promedio de los pacientes con DNI mayor a 300 son: ', promedio:2:2);
		writeln('El DNI del paciente mas joven es: ', DNI_PJ);
	readln;
end.
