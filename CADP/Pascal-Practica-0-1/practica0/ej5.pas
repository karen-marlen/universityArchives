program ej5;
var 
	X, Y, caramelos_para_cada_persona: Integer;
	precio, cobro: Real;

begin
	precio := 1.60;
	read(X, Y);
	caramelos_para_cada_persona := X div Y;
	writeln('A cada cliente le corresponden ', caramelos_para_cada_persona, ' caramelos.');
	writeln('El kiosquero se encanuta los ', X mod Y, ' caramelos restantes.');
	cobro := caramelos_para_cada_persona * Y * precio;
	writeln('El kiosquero debera cobrar ', cobro:6:2, ' pesos.');
end.