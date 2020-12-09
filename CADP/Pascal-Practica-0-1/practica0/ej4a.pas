Program ej4a;
var
	d, r, A, peri: Real;
Const 
	pi = 3.14;
begin
	read(d);
	r := d / 2;
	A := pi * r * r;
	peri := pi * d;
	writeln('El radio del circulo es: ',r:6:3);
	writeln('El area del circulo es ', A:6:3);
	writeln('El perimetro del circulo es ', peri:6:3);

end.