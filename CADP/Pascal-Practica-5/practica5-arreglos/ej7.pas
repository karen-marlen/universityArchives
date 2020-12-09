program ej7;
type 
	rango = 0..9;
	vector = array[rango] of Integer; 
procedure inicializar(var v:vector);
	var i:rango;
	begin
		for i:=0 to 9 do 
			v[i] := 0; 
	end;

procedure descomponer(var v:vector; num:Integer);
	var dig:Integer;
	begin
		while num <> 0 do begin {NOTA IMPORTANTE: Si el num ingresado es 0, no va a incrementar el contador de 0}
			dig := num MOD 10;
			v[dig] := v[dig] + 1;
			num := num DIV 10;
		end;
	end;

function maximo(v:vector):Integer;
	var maxOcurrencias, maxIndice:Integer;
	i:rango;
	begin
			maxOcurrencias := -1;
			for i:=0 to 9 do
				if v[i] > maxOcurrencias then begin
					maxOcurrencias := v[i];
					maxIndice := i;
				end;
			maximo := maxIndice;
	end;

procedure informarSinOcurrencias(v:vector);
	var
		i:rango;
		begin
			for i:=0 to 9 do 
				if v[i] = 0 then begin
					write(i);
					write(', ');
				end;
		end;

var vc:vector;
		num:Integer;
begin
	inicializar(vc);
	readln(num);
	while(num <> -1) do begin
		descomponer(vc, num);
		readln(num);
	end;
	writeln('El digito mas leido fue el ', maximo(vc));
	writeln('Los numeros sin ocurrencias fueron: ');
	informarSinOcurrencias(vc);
end.

