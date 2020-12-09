{1.Realizar un programa que lea 2 nÃºmeros enteros desde teclado e 
informe en pantalla cuÃ¡l de los dos nÃºmeros es el mayor. 
Si son iguales debe informar en pantalla lo siguiente: 
â€œLos nÃºmeros leÃ­dos son igualesâ€.}

program Ej1;
var
   n1, n2 : integer;
   max : real;
begin
     readln(n1);
     readln(n2);
     if (n1 > n2) then begin
        max := n1;
        writeln('El numero mas grande es: ', max:2:2);
     end;
     if (n2 > n1) then begin
        max:= n2;
        writeln('El numero mas grande es: ', max:2:2);
     end;
     if (n2 = n1) then begin
        writeln('Los numeros ingresados son iguales');
     end;
        readln;
end.