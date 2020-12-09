program ej13;
	procedure circulo(rad:Real; var diam:Real; var peri:Real);
	const
		pi = 3.14156;
	begin
		diam:=0;
		peri:=0;
		diam:=rad*2;
		peri:=rad*2*pi;
	end;

procedure leerPlaneta(var nom:String; var rad:Real; var dist:Real);	
begin
	writeln('Ingrese el nombre del planeta: ');
	readln(nom);
	writeln('Ingrese el radio del planeta: ');
	readln(rad);
	writeln('Ingrese la distancia del planeta: ');
	readln(dist);
end;


const 
d_tierra = 12700;
d_marte = 6780;
p_jupiter = 439264;
var 
	nombre:String;
	radio, distancia, diametro, perimetro:Real;
	cantMayores:Integer;
begin
	leerPlaneta(nombre, radio, distancia); 
	cantMayores:=0;
	while(radio <> 0) do begin
		circulo(radio, diametro, perimetro);
		{informar diam entre tierra y marte?}
		if (diametro <= d_tierra) and (diametro > d_marte) then
		writeln('El planeta ', nombre,' esta a una distancia de ', distancia:6:2, ' años luz.');
		{perimetro mayor a jup ? contador ++ : continue}
		if perimetro > p_jupiter then
			cantMayores := cantMayores + 1;
		leerPlaneta(nombre, radio, distancia);

	end;
	writeln('La cantidad de planetas con perimetro mayor al de jupiter fue de ', cantMayores);
end.