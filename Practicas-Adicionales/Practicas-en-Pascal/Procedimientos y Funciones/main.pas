{
	Armando Rojas 


	Menus y Sub-menus para numeros generar tablas de sumar, restar, multiplicar y dividir
	Operaciones basicas de numeros pares, numeros primos, intervalo, promedio
	entre otros. 

	Practica de Pascal - UNEFA, Junio 2015 

}

program armando;
 uses crt; 

	{ menu del programa}
	
	function menuP:char;	begin
	clrscr();
		
		gotoxy(16,4);writeln('1.. Tablas');
		gotoxy(16,6);writeln('2.. Generar');
		gotoxy(16,8);writeln('3.. promedio');
		gotoxy(16,10);writeln('4.. area');
		gotoxy(16,12);writeln('0.. salir');
		
		menup:=readkey();
		
		
		end;

    	{ menu del A}
	
	function menuA:char; begin
		clrscr();
		gotoxy(16,4);writeln('A.. suma');
		gotoxy(16,6);writeln('B.. multiplicar');
		gotoxy(16,8);writeln('C.. restar');
		gotoxy(16,10);writeln('R.. regresa');
		
		
		menuA:=readkey;
		
		
		end;
    { fin del menu  A}	
	
	
	{menu del c}
	
function menuc:char; begin
		clrscr();
		gotoxy(16,4);writeln('A.. Promedio de N notas');
		gotoxy(16,6);writeln('B.. Promedio de edades');
		gotoxy(16,8);writeln('R.. regresa');
		menuc:=readkey;
		
		end;
    { fin del menu  c}	
	
	    
    	{ menu del b}
	
function menub:char; begin
		clrscr();
		gotoxy(16,4);writeln('1.. pares de intervalos');
		gotoxy(16,6);writeln('2.. Numeros Primos');
		gotoxy(16,8);writeln('3.. Factorial del Menol N.. numeros');
		gotoxy(16,12);writeln('0.. regresa');
		gotoxy(16,10);writeln('4.. Perfecto');
		
		menub:=readkey;
		
		
		end;

	function menud:char; begin
		clrscr();
		gotoxy(16,4);writeln('1.. Cuadrado');
		gotoxy(16,6);writeln('2.. Triangulo');
		gotoxy(16,8);writeln('0.. Regresar');
		
		
		
		menud:=readkey;
		
		
		end;
   
	{ procedure suma}
	procedure Suma; var num,i,rest: integer; begin
		
		clrscr();
		writeln('Ingresa un numero..');
		readln(num);
		
			for i:=1 to 10 Do
				begin
				rest:= num+i;
				
				writeln(num,'+',i,' = ',rest);
				
				end;
				
			readkey();
	
		end;	
		
		{ fin de suma}
		
				
		{ procedure multiplicacion}
	procedure multi; var num,i,rest: integer; begin
		
		clrscr();
		writeln('Ingresa un numero..');
		readln(num);
		
			for i:=1 to 10 Do
				begin
				rest:= num*i;
				
				writeln(num,'*',i,' = ',rest);
				
				end;
				
			readkey();
	
		end;	
		
		{ fin de multiplicacion}

		{ procedure resta}
	procedure resta; var num,i,rest: integer; begin
		
		clrscr();
		writeln('Ingresa un numero..');
		readln(num);
		
			for i:=1 to 10 Do
				begin
				rest:= num-i;
				
				writeln(num,'-',i,' = ',rest);
				
				end;
				
			readkey();
	
		end;	
		
		{ fin de resta}		
		
	{ inicio de pares}
	
	procedure pares;  var I,Inicio,Fin,rest: integer; begin	
	clrscr();
	
	repeat begin
	writeln('Ingresa el comienzo del intervalo');
	readln(inicio);
	
	writeln('Ingresa el Fin del intervalo');
	readln(Fin);
	
	if inicio>fin then begin clrscr; writeln('el comienzo del intervalo debe ser menor al fin'); end;
	
	end; until (Inicio<Fin);
	
		for i:=inicio to Fin DO
		
			begin
			rest:= i mod 2; 
			
				if rest= 0 then
							begin
							write('  ',i);
							
							end;
			
			end; {del for }
	readkey();
	end; { end de los pares }
	
	Procedure Perfecto; var num, i, xx,sum: integer; begin
	clrscr(); 
	xx:=0;
	
		writeln('Ingresa un Numero');
		readln(num);
		
			for i:= 1 to num-1 DO
				begin
				
				sum:= num mod i;
				
					if sum = 0 then
								begin
								 xx:= xx+i;
								end;
				
				end;
		
		if xx = num then writeln(' Es Perfecto')
					else writeln(' No es Perfecto');
					readkey();
	end;
	

	
	procedure factorial;  var num,i,menor: integer;rest: real; rps: char;
		
			function Ffactorial(num,i: integer):real; begin
					
				rest:= 1;
				
				for i:=1 to num DO
					
					begin
					
					rest:= rest*i;
					
					end;
			Ffactorial:= rest;
			
			end;
	begin
	menor:=9999; 
		repeat
		clrscr();
		writeln('Ingresa un numero');
		readln(num);
		repeat
			writeln('Repetir? S/N');
			rps:= readkey;
				if num<menor then begin menor:=num; end;
		until (rps='s') or (rps= 'n');
		
		
		until RPS='n';
		
	writeln(ffactorial(menor,i):0:0);
	readkey();
	end;
		procedure primos; var num,i,xx: integer; 
		
		function FPrimo(num: integer): boolean;
			
			var i,dv,c: integer;
			
			begin
			c:=0;
			for i:=1 to num Do
				begin
				
				dv:= num mod i;
					if dv= 0 then begin c:=c+1; end;
				end;
			
			if c<3 then fprimo:= true
					else fprimo:= false;
			
			end;

		begin
	
		clrscr;
		writeln(' Ingrese el numero de Numeros Primos que desea ver');
		readln(num);
		
			for i:= 1 to num DO
				begin
				
				if fprimo(i)= true then 	
									begin 
									write(i,' ');
									end;
				
				end;
			readkey();
		
		end;

	function Promedio(total,cantidad: integer): real;
		begin
		promedio:=total/cantidad;
		end;
	
	procedure Notas;
		var num,total,cantidad: integer; x: char; begin
		total:= 0; cantidad:= 0;
			repeat
			clrscr();
			cantidad:=cantidad+1;
			writeln(' Ingresa una Nota ','  (',cantidad,')');
			readln(num);
			total:=total+num;
				repeat
				writeln('Desea Agregar Otra Nota? S/N');
				x:=readkey;
				until (x='n') or (x='s')
			until x='n';
			clrscr();
		writeln('El promedio de las notas es de: ',promedio(total,cantidad):0:0);
		readkey();
		end;
	
	procedure pesos; var num,total,cantidad: integer; x: char; begin
		total:= 0; cantidad:= 0;
			repeat
			clrscr();
			cantidad:=cantidad+1;
			writeln(' Ingresa la edad ','  (',cantidad,')');
			readln(num);
			total:=total+num;
				repeat
				writeln('Desea Agregar Otra edad? S/N');
				x:=readkey;
				until (x='n') or (x='s')
			until x='n';
			clrscr();
		writeln('El promedio de las edades es de: ',promedio(total,cantidad):0:0);
		readkey();
		end;
	
	procedure cuadrado; var num: real; begin
	clrscr();
	writeln(' Ingresa el extremo del cuadrado');
	readln(num);
	
		num:=num*num;writeln;
		writeln('Tu resultado es:  ',num:0:0);
	readkey();
										end;
	
	
	procedure Armando; var  r,r1: char; begin
	
	
	
	while not ( r='0') do 
	
		begin 
		
		r1:='x';
		
		 case  menuP of 
			
			'1': begin
			
						while not (r1='r') do
					
						begin
						
					case menuA of 
							
					'a': begin suma end;
					'b': begin multi end;
					'c': begin resta end;
					'r': begin r1:='r' end;
					end;
					
					
						end; { el while }
				
				
				end; { la 1}
					
			'2': begin
			
						while not (r1='r') do
					
						begin
						
					case menuB of 
							
					'1': begin pares end;
					'2': begin primos; end;
					'3': begin factorial  end;
					'4': begin perfecto end;
					'0': begin r1:='r' end;
					end;
					
					
						end; { el while }
				
				
				end; { la 1}
			'3': begin
			
			while not (r1='r') do
					begin
					
					case menuc of
					
					'a':begin notas; end;
					'b':begin pesos; end;
					'r':begin r1:= 'r' end;
						end;
					end; { el while }
				
				
					end; { la 3}
			 
			 '4': begin
			
			while not (r1='r') do
					begin
					
					case menud of
					
					'1':begin cuadrado; end;
					'2':begin pesos; end;
					'0':begin r1:= 'r' end;
						end;
					end; { el while }
				
				
					end; { la 4}
			 
			 
			 '0': begin 
			 r:='0' end;
			
			end;  { end del case}
		
		end; {while del menu P} 
	

	
	end;

begin
Armando;
end.