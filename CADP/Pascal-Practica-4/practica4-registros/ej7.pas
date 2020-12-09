program ej7;
type
	centros = record
		nombre : string;
		universidad : string;
		investigadores : Integer;
		becarios : Integer;
	end;

	maximo = record
		nombre1 : string;
		nombre2 : string;
		cant1 : Integer;
		cant2 : Integer;
	end;

procedure leer(var centro:centros);
	begin
		with centro do begin
		writeln('-------------');
		writeln('Nombre'); readln(nombre);
		writeln('Universidad'); readln(universidad);
		writeln('Cantidad de Investigadores'); readln(investigadores);
		if (investigadores <> 0) then begin
		writeln('Cantidad de Becarios'); readln(becarios);
		end;
		end;
	end;

procedure actualizarInvestigadores(var max:maximo; contador:Integer; actual:string);
	begin
		if contador >= max.cant1 then begin
			max.cant1 := contador;
			max.nombre1 := actual;
		end;
	end;

procedure  actualizarBecarios(var maxBec:maximo; becarios:Integer; nombre:string);
	begin
		if becarios >= maxBec.cant1 then begin
			{paso la data del primer puesto al seguno}
			maxBec.cant2 := maxBec.cant1;
			maxBec.nombre2 := maxBec.nombre1;
			{ahora si sobreescribo el primer puesto con los nuevos valores}
			maxBec.cant1 := becarios;
			maxBec.nombre1 := nombre;
		end
		else begin
			if becarios >= maxBec.cant2 then begin
				maxBec.cant2 := becarios;
				maxBec.nombre2 := nombre;
			end;
		end;
	end;

procedure initBecarios(var maxBecarios:maximo);
	begin
		with maxBecarios do begin
			nombre1 := '';
			nombre2 := '';
			cant1 := 0;
			cant2 := 0;
		end;
	end;


var contadorCentros, contadorInvest : Integer;
maxBecarios : maximo;
maxInvest : maximo; {Aca guardo el nombre de la universidad con mas investigadores}
actualUni :string; {Guardo la universidad que estoy procesando en el while interno}
centro : centros;

begin
	maxInvest.nombre1 := '';
	maxInvest.cant1 := 0;
	initBecarios(maxBecarios);
	leer(centro);
	while(centro.investigadores <> 0) do begin
		contadorInvest := 0;
		contadorCentros := 0;
		actualUni := centro.universidad;
		while((centro.investigadores <> 0 ) and (actualUni = centro.universidad)) do begin
			contadorInvest := contadorInvest + centro.investigadores;
			actualizarBecarios(maxBecarios, centro.becarios, centro.nombre);
			contadorCentros := contadorCentros + 1;
			leer(centro);
		end;
		writeln('La cantidad de centros de la universidad ', actualUni, ' es de ', contadorCentros);
		actualizarInvestigadores(maxInvest, contadorInvest, actualUni);
	end;
	writeln('La universidad con mayor cantidad de investigadores fue ', maxInvest.nombre1, ' con ', maxInvest.cant1, ' investigadores.');
	writeln('Los dos centros con mayor cantidad de becarios fueron ',maxBecarios.nombre1, ' y ', maxBecarios.nombre2);
end.



{Realizar un programa que lea información de centros de investigación de Universidades Nacionales.
De cada centro se lee su nombre abreviado (ej. LIDI, LIFIA, LINTI), la universidad a la que pertenece,
la cantidad de investigadores y la cantidad de becarios que poseen. ​ La información se lee de forma
consecutiva por universidad​ , y la lectura finaliza al leer un centro con 0 investigadores, que no debe
procesarse. Informar:
◦ la cantidad total de centros para cada universidad.
◦ la universidad con mayor cantidad de investigadores en sus centros.
◦ los dos centros con mayor cantidad de becarios.}