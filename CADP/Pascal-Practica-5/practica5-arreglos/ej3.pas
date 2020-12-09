    program ej3;
const
	dimF = 5;
type
	vector = array [1..dimF] of Integer;

{imprimir desde la primer posicion hasta la ultima}
procedure primeraUltima(v:vector;dimL:Integer);
	var i:Integer;
	begin
		for i:=1 to dimL do 
		writeln(v[i]);
	end;

procedure ultimaPrimera(v:vector; dimL:Integer);
	var i:Integer;
	begin
		for i:=dimL downto 1 do
		writeln(v[i]);
	end;

procedure desdeMitad(v:vector; dimL:Integer);
	var mitad,i:Integer;

	begin
		mitad := dimL DIV 2;
		for i:=mitad downto 1 do
			writeln(v[i]);
		for i := (mitad + 1) to dimL do
			writeln(v[i]);
	end;

procedure coordenadas(v:vector; x,y:Integer);
	var i:Integer;
	begin
		if x < y then
		for i:=x to y do
			writeln(v[i])
		else 
		for i := x downto y do
		writeln(v[i]);
	end;

begin
	
end.
