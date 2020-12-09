{
	El colectivo de fotógrafos ArgenPics desea conocer los gustos de sus seguidores en las redes
sociales. Para ello, para cada una de las 200 fotos publicadas en su página de Facebook, cuenta con
la siguiente información: título de la foto, el autor de la foto, cantidad de Me gusta, cantidad de clics
y cantidad de comentarios de usuarios. Realizar un programa que lea y almacene esta información.
Una vez finalizada la lectura, el programa debe procesar los datos e informar:
− Título de la foto más vista (la que posee mayor cantidad de clics)
− Cantidad total de Me gusta recibidas a las fotos cuyo autor es el fotógrafo “Art Vandelay”.
− Cantidad de comentarios recibidos para cada una de las fotos publicadas en esa página.
}
{
	carga de datos
		cargarDatos(info_fotos:vector_registros, dim(200):integer )
}
{
	procesar datos(v:vector, var tituloMasVista, var likesAutor)
	
	a)max clicks: por cada elemento del vector (v[elem]), chequear
	 si v[elem].clicks es igual a maxClicks (se asume la primer ocurrencia como maxima).
	 Si v[elem].clicks es mayor, se guarda v[elem].titulo (que viene dado por referencia en 
	 procesar())
	b)cantidad total de me gustas del artista Art Vandelay
	un contador que en cada iteracion verifique si v[elem].autor == Vandelay --> 
	likes = likes + v[elem].likes
	c) en cada iteracion, informar v[elem].comentarios


	informar(tituloMasVista, likesAutor, vectorComentarios)
	informar titulo
	informar clicks
	for i:=! to 200 informar
		la foto numero (i) tuvo vectorComentarios[i] comentarios
	}

	program ej10;
	const tam = 3;
	type
		foto = record
			titulo : string;
			autor : string;
			likes: integer;
			clicks: Integer;
			comentarios : Integer;
		end;

		vectorFotos = array[1..tam] of foto;
		vectorComentarios = array[1..tam] of integer; 

	procedure cargarDatos(var v:vectorFotos);
	var i:Integer;
	begin
		for i:=1 to tam do begin
			writeln('Titulo'); readln(v[i].titulo);
			writeln('Autor'); readln(v[i].autor);
			writeln('Likes'); readln(v[i].likes);
			writeln('Clicks'); readln(v[i].clicks);
			writeln('Comentarios'); readln(v[i].comentarios);
		end;
	end;


	procedure maxClicks(clicks:Integer; titulo:string;var tituloMax:String; var maxClicks:Integer);
		begin
			if (clicks >= maxClicks) then begin
				tituloMax:=titulo;
				maxClicks := clicks;
				end;
		end;

	procedure likesVandelay(autor:string; likes:integer; var contador_likes:Integer);
	begin
		if autor = 'Art Vandelay' then
			contador_likes := contador_likes + likes;	
	end;


	procedure procesarDatos(v:vectorFotos; var tituloMax:string;
													var likes:Integer; var vc:vectorComentarios);
		var i, max:Integer;
		begin
				max := v[1].clicks;
				tituloMax := v[1].titulo;
				likes := 0;
				for i:=1 to tam do begin
					{actualizo vector cantida dde comentarios}
					vc[i] := v[i].comentarios;
					{actualizo maximo de clicks y el titulo}
					maxClicks(v[i].clicks, v[i].titulo, tituloMax, max);
					likesVandelay(v[i].autor, v[i].likes, likes);
				end;
		end;
procedure informar(vc:vectorComentarios; titulo_foto:string; likes:Integer);
	var i:integer;
	begin
		writeln('La foto mas vista fue ', titulo_foto);
		writeln('La cantidad total de likes que recibio Art Vandelay fue de ', likes);
		for i:=1 to tam do
		writeln('La foto ', i, ' recibio ', vc[i], ' comentarios.');
	end;




	var vf:vectorFotos;
			vc:vectorComentarios;
			tituloMasVista:string;
			likesAutor:Integer;
	begin
		cargarDatos(vf);
		procesarDatos(vf, tituloMasVista, likesAutor, vc);
		informar(vc, tituloMasVista, likesAutor);
	end.

