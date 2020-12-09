program ej5;
type
	intendente = record
		localidad : string;
		apellido : string;
		votos : integer;
		votantes : integer;
		porcentaje : Real;
	end;

	maximos = record
		max_votos : Integer;
		max_porcentaje : Real;
		apellido_votos : string;
		apellido_porcentaje : string;
	end;


	procedure leerDatos(var nuevo_intendente:intendente);
	begin
		with nuevo_intendente do begin
			writeln('-----Nuevo Dato-----');
			writeln('Localidad: '); readln(localidad);
			writeln('Apellido: '); readln(apellido);
			writeln('Votos: '); readln(votos);
			writeln('Votantes: '); readln(votantes);
			while (votantes < votos) do begin
				writeln('Error, tiene que haber mas votantes que votos.');
				writeln('Votantes: '); readln(votantes);
			end;
			porcentaje := (votos/votantes)*100;
			writeln('Porcentaje: ', porcentaje:4:2); 
		end;
	end;
	
	procedure actualizarMaximos(int:intendente; var max:maximos);
	begin
		if (int.votos >= max.max_votos) then begin
			max.max_votos := int.votos;
			max.apellido_votos := int.apellido;
		end;
		if (int.porcentaje >= max.max_porcentaje) then begin
			max.max_porcentaje := int.porcentaje;
			max.apellido_porcentaje := int.apellido;
		end;
	end;

	procedure initMaximos(var max:maximos);
	begin
		with max do begin
			max_votos := 0;
			max_porcentaje := 0;
			apellido_votos := '';
			apellido_porcentaje := '';
		end;
	end;


var 
nuevo_intendente:intendente;
max:maximos;

begin
	initMaximos(max);
	repeat
		leerDatos(nuevo_intendente);
		actualizarMaximos(nuevo_intendente, max);
	until (nuevo_intendente.localidad = 'Zarate');
	writeln('El intendente con mas votos fue ', max.apellido_votos, ' con ', max.max_votos, ' votos.');
	writeln('El intendente con mas porcentaje de votos fue ', max.apellido_porcentaje, ' con un ', max.max_porcentaje, '% de los votos.');
end.

{
	modelo de dato: intendente;
	localidad: string
	apellido: string
	votos : integer
	votantes: integer
	porcentaje : Real 

	modelo de dato: maximos;
	max_votos : integer
	max_porcentaje: integer
	nombre_votos: string
	nombre_porcentaje:string
	

}

{
	leerDatos(nuevo_intendente:intendente);
	leer ---> localidad
						apellido 
						votos
						votantes
						porcentaje := (votos/votantes)*100
}


{

actualizarMaximos(intendente:intendente; var max:maximos);
	si (intendente.votos >= max.max_votos) then
		max.max_votos = intendente.votos
		max.nombre_votos: intendente.nombre
	si (intendente.porcentaje >= max.max_porcentaje) then
	max.max_porcentaje := intendete.porcentaje
	max.nombre_porcentaje := intendente.nombre
}

{
	estructura de control: 
	repeat 


	until (localidad = Zarate)
}