program ej7;
	var
	i: Integer;
	tiempo, t_primero, t_segundo, t_ultimo, t_penultimo: Real;
	nombre, n_primero, n_segundo, n_ultimo, n_penultimo: String;

begin
	writeln('ingrese el nombre del piloto');
	readln(nombre);
	writeln('ingrese el tiempo del piloto');		
	readln(tiempo);
	t_primero := tiempo;
	t_ultimo := tiempo;
	n_primero := nombre;
	n_ultimo := nombre;

	for i:=1 to 99 do 
	begin
	writeln('ingrese el nombre del piloto');
	readln(nombre);
	writeln('ingrese el tiempo del piloto');		
	readln(tiempo);
	{si hizo mejor tiempo que el primero}
	if (tiempo < t_primero) then begin
		t_segundo := t_primero;
		n_segundo := n_primero;
		t_primero := tiempo;
		n_primero := nombre;
	end;
	{si hizo mejor tiempo que el segundo pero mas que el primero}
	if ((tiempo > t_primero) and (tiempo < t_segundo)) then begin
		t_segundo := tiempo;
		n_segundo := nombre;
	end;
	{si hizo peor tiempo que el ultimo}
	if (tiempo > t_ultimo) then begin
		t_penultimo := t_ultimo;
		n_penultimo := n_ultimo;
		t_ultimo := tiempo;
		n_ultimo := nombre;
	end;
	{si esta entre el penultimo y el ultimo}
	if ((tiempo > t_penultimo) and (tiempo < t_ultimo)) then begin
		t_penultimo := tiempo;
		n_penultimo := nombre;
	end;
	end;
	writeln('Los dos primeros puestos los ocupan ', n_primero, ' y ', n_segundo);
	writeln('Los dos ultimos puestos los ocupan ', n_ultimo, ' y ', n_penultimo);
	
end.