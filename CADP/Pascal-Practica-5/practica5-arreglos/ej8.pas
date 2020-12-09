program ej8;
	const 
	tam = 300;
	type
		vector = array[1..tam] of Real;

	procedure cargar(var v:vector; var dimL:Integer);
		var num:Integer;
		begin
			dimL := 0;
			writeln('Ingrese los salarios de a uno.');
			readln(num);
			while ((num <> 0) and (dimL < 300)) do begin
				dimL := dimL + 1;
				v[dimL] := num;
				readln(num);
			end;
		end;	
	procedure aumentarSalario(var v:vector; dimL:Integer; aumento:Real);
	var i:Integer;
	begin
		for i:=1 to dimL do
		v[i] := v[i] * aumento;
	end;

	procedure informarPromedio(v:vector; dimL:Integer);
	var i: Integer;
	promedio,sumaTotal:real;
	begin
	sumaTotal := 0;
		for i:=1 to dimL do begin
			sumaTotal := sumaTotal + v[i];
		end;
		promedio := sumaTotal/dimL;
		writeln('El promedio de salarios es de $', promedio:6:2, ' pesos,')
	end;

var dimL:Integer;
		salarios:vector;
		aumento : Real;
begin
	aumento := 1.15;
	cargar(salarios,dimL);
	aumentarSalario(salarios, dimL, aumento );
	informarPromedio(salarios, dimL);
end.