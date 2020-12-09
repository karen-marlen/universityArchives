program ej8;

function esDoble(numA, numB: integer):boolean;
begin
esDoble:=(numB = numA * 2);
end;


var numA, numB:Real;
total, dobles:integer;
    
begin
    total := 0; 
    dobles := 0;  
    writeln('escriba los numeros A y B: ');
    readln(numA, numB);
    while((numA <> 0) and (numB <> 0)) do begin
        total := total + 1;
        if (esDoble(numA,numB)) then
            dobles := dobles + 1;
        writeln('escriba los numeros A y B: ');
        readln(numA,numB);
        end;
    writeln('La cantidad total de pares leidos fue de: ', total,' y la cantidad de pares en donde B fue el doble que A fue de: ', dobles);
end.

