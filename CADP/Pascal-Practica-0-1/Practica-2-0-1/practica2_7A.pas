{program ejercicio7;

procedure LeerDatos(numA,numB:integer);
	var
		cumple:boolean;
	begin
		if(numA*2 = numB) then
			cumple:=true;
		if (cumple) then
			writeln('El numero B es el doble de Numero A')
	end;
	
var
	numA,numB:integer;
begin
	numA:=0;
	NumB:=0;
	writeln('Ingrese el primer numero');
	readln(numA);
	writeln('Ingrese el segundo numero');
	readln(numB);
	LeerDatos(numA,numB);
end.
}
program ejercicio7F;

function LeerDatos (numA,numB:integer) :boolean;
	var
		cumple:boolean;
	begin
		cumple:=false;
		if(numA*2 = numB) then
			cumple:=true;
	LeerDatos:=cumple;
	end;
var
	numA,numB:integer;
begin
	numA:=0;
	NumB:=0;
	writeln('Ingrese el primer numero');
	readln(numA);
	writeln('Ingrese el segundo numero');
	readln(numB);
	writeln(LeerDatos (numA, numB));
end.
