program ejercicio7;
var
    codigo : integer;
    precio_act, precio_nuevo, aumento, porcentaje : real;
Begin
    writeln('Ingrese el codigo del producto: ');
    readln(codigo);
    while (codigo <> 32767) do Begin
        writeln('Ingrese el precio actual del producto: ');
        readln(precio_act);
        writeln('Ingrese el nuevo precio del producto: ');
        readln(precio_nuevo);
        aumento := precio_nuevo - precio_act;
        porcentaje := (aumento * 100) / precio_act;
        if (porcentaje > 10) then
            writeln('El auento del precio del producto es superior al 10 %')
        else
            writeln('El aumento de precio del producto no supera el 10%');
        writeln();
        writeln('Ingrese el codigo del producto :');
        readln(codigo);
    end;
End.
//By Fidel
