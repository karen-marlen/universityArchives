{Practica Basica de Pascal}
program practica; 

var
{Declaracion de Variables}
	samba: real;  {varia}
	pepito: real; 
	precio: real; 

BEGIN


{   Entrada }
	writeln('Precio de samba');  {Muestra en pantalla}
	readln(samba); {lectura por teclado}

	writeln('Precio de pepito');  
	readln(pepito); 

{-------------------}

{proceso}


	{asigna a la variable procesos el resultado de la suma de las variables samba y pepito}
		
	precio := samba + pepito; 

{--------------------}


{salida}

	writeln(precio:0:1);

{-----------------}	
END.
