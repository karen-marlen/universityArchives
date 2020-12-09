program ejercicio7b;

procedure LeerDatos(numA,numB:integer ; var cant:integer);
	begin
		if(numA*2 = numB) then
			cant:=cant + 1;
	end;
	
var
	numA,numB,cant,cantNum:integer;
begin
	numA:=0;
	NumB:=0;
	cant:=0;
	cantNum:=0;
	writeln('Ingrese pares de numeros');
	readln(numA);
	readln(numB);
	while(numA <> 0) and (numB <> 0) do begin
		cantNum := cantNum + 1;
		LeerDatos(numA,numB,cant);
		readln(numA);
		readln(numB);
	end;
	writeln('La cantidad de pares de numeros en que numB es el doble de numA son : ',cant);
	writeln('La cantidad de pares leidos son: ',cantNum);
end.
