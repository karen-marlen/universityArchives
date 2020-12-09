{
  Realice un programa que resuelva los siguientes incisos:
a. Lea nombres de alumnos y los almacene en un vector de a lo sumo 500 elementos. La
lectura finaliza cuando se lee el nombre ‘ZZZ’, que no debe procesarse.
b. Lea un nombre y elimine la primera ocurrencia de dicho nombre en el vector.
c. Lea un nombre y lo inserte en la posición 4 del vector.
d. Lea un nombre y lo agregue al vector.
Nota: Realizar todas las validaciones necesarias.
}
program ej9;
const 
tam = 500;
type
vector = array[1..tam] of String;

procedure cargar(var v:vector; var dimL:Integer);
var nombre : String;
begin
	dimL:=0;
	writeln('Ingrese nombre');
	readln(nombre);
	while ((nombre<>'ZZZ')and(dimL < tam)) do begin
		dimL := dimL + 1;
		v[dimL] := nombre;
		readln(nombre);
	end;
end;

procedure eliminarNombre(var v:vector; var dimL:integer);
	var pos, i:Integer;
	encontro : Boolean;
	nombre : String;
	begin
		encontro := false;
		pos := 0;
		writeln('Ingrese el nombre a eliminar');
		readln(nombre);
		{busco el nombre}
		while ((not encontro) and (pos < dimL)) do begin
			pos := pos + 1;
			if (v[pos] = nombre) then 
				encontro := true;
			end;
		{si lo encuentro hago el corrimiento y modifico dimL
	}
		if encontro then begin
			for i:=pos to (dimL-1) do begin
				writeln('Se intercambia ', v[i], ' por ', v[i + 1]); 
				v[i] := v[i+1];	
				end;
			dimL := dimL - 1; {actualizo dimL}
			writeln('se encontro y elimino una 1er ocurrencia del nombre ', nombre, ' en la posicion ',pos);
			end
		else writeln('No se encontro ninguna ocurrencia');
	end;

procedure insertarNombre(var v:vector; var dimL:Integer);
	var nombre:String;
	i, pos:integer;
	begin
		pos:=4;
		writeln('Insertar nombre: ');
		readln(nombre);
		if ((dimL < tam) and (pos <= dimL) and (pos >= 1)) then begin {verifico que pueda incrementar la dimL para insertar nuevo nombre}
			for i:=dimL+1 downto pos+1 do   {hago el corrimiento}
				v[i] := v[i-1];
			v[pos] := nombre; {reemplazo elvalor de la posicion 4 por el nuevo nombre}
			dimL := dimL + 1; {incremento la dimension logica}
		end;
	end;

procedure agregarNombre(var v:vector; var dimL:Integer);
	var nombre:String;
	begin
		if dimL < tam then begin
			writeln('Agregar nombre');
			readln(nombre);
			dimL := dimL + 1;
			v[dimL] := nombre;
		end
		else writeln('No se puede agregar nombre, el vector esta lleno.');

	end;


procedure imprimirVector(v:vector; dimL:Integer);
	var i:integer;
	begin
	writeln('-----------');
		for i:= 1 to dimL do
			writeln(v[i]);
	writeln('-----------');
	end;


var
nombres:vector;
dimL:Integer;
 begin
 cargar(nombres,dimL);
 imprimirVector(nombres, dimL);
 // eliminarNombre(nombres, dimL);
 // insertarNombre(nombres, dimL);
 agregarNombre(nombres, dimL);
 imprimirVector(nombres, dimL);

 end.