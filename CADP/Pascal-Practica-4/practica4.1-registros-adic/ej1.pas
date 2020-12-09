program ej1;
	type
		planta = record
			nombre : string;
			t_vida : real;
			tipo : string;
			clima : string;
			pais : string;
		end;
		max_vida = record
			nombre1 : string;
			nombre2 : string;
			max1 : real;
			max2 : real;																		
		end;

procedure leerPlanta(var planta:planta);
	begin
		with planta do begin
			writeln('---Nueva Planta---'); 
			writeln('Tipo'); readln(tipo);
			writeln('Nombre'); readln(nombre);
			writeln('Tiempo de vida'); readln(t_vida);
			writeln('Clima'); readln(clima);
			writeln('Pais'); readln(pais);
		end;
	end;

{Actualizar el tipo de planta con menor cantidad de plantas}	
procedure actualizarMinPlantas(var cantidad:Integer; var tipo:string; tipo_actual:string; cantidad_actual:Integer);
	begin
		if cantidad_actual >= cantidad then begin
			cantidad := cantidad_actual;
			tipo := tipo_actual;
		end;
	end;


procedure actualizarMaxPaises(var planta:string; var cantidad:Integer; nombre_actual:string; cantidad_actual:integer);
	begin
		if cantidad_actual >= cantidad then begin
			planta := nombre_actual;
			cantidad := cantidad_actual;
		end;
	end;


{Guardar los datos de las 2 plantas mas longevas}
procedure actualizarMaxLong(var max_longevas:max_vida; nombre_actual:string; tiempo_vida_actual:real);
	begin
		if tiempo_vida_actual >= max_longevas.max1 then begin
			max_longevas.max2 := max_longevas.max1;
			max_longevas.nombre2 := max_longevas.nombre1;
			max_longevas.max1 := tiempo_vida_actual;
			max_longevas.nombre1 := nombre_actual;
		end
		else if tiempo_vida_actual >= max_longevas.max2 then begin
				max_longevas.max2 := tiempo_vida_actual;
				max_longevas.nombre2 := nombre_actual
			end;
	end;
{Calcula y devuelve el valor del promedio de vida de plantas de un mismo tipo}
function promedioVida(sumaPromediosVida:Real; cantidadDePlantas:Integer): Real;
begin
	promedioVida:=sumaPromediosVida/cantidadDePlantas;
end;



var i, contadorPaises, min_cantidad, cantidad_max_paises, cantidadPlantas:Integer;
		sumaTiemposDeVida:Real;
		p :planta;
		max_longevas:max_vida;
		min_tipo, tipo_actual,planta_max_paises : string;


begin
	min_tipo := '';
	min_cantidad := 32767;
	max_longevas.nombre1 := '';
	max_longevas.nombre2 := '';
	max_longevas.max1 := -1;
	max_longevas.max2 := -1;
	planta_max_paises := '';
	cantidad_max_paises := -1;
for i:=1 to 3 do begin
	cantidadPlantas := 0;
	sumaTiemposDeVida := 0;
	leerPlanta(p);
	tipo_actual := p.tipo;
		while (p.tipo = tipo_actual) do begin
			contadorPaises := 0;
			cantidadPlantas := cantidadPlantas + 1;
			sumaTiemposDeVida := sumaTiemposDeVida + p.t_vida;
			actualizarMaxLong(max_longevas, p.nombre, p.t_vida);
				while(p.pais <> 'zzz') do begin
					contadorPaises := contadorPaises + 1;
					if ((p.pais = 'Argentina') and (p.clima = 'Subtropical')) then
						writeln('La planta ', p.nombre, ' es de Argentina y clima subtropical');
					writeln('Pais/es en el/los que se encuentra: ');
					readln(p.pais);
				end;
			actualizarMaxPaises(planta_max_paises, cantidad_max_paises, p.nombre, contadorPaises);	
			leerPlanta(p);
		end;
		actualizarMinPlantas(min_cantidad, min_tipo, tipo_actual, cantidadPlantas);
		writeln('El primedio de vida del tipo ', tipo_actual, ' fue de ', promedioVida(sumaTiemposDeVida, cantidadPlantas):4:1, ' meses.')
end;
writeln('El tipo de plantas con menor cantidad de plantas fue ', min_tipo);
writeln('El nombre cientifico de las dos plantas mas longevas fue ', max_longevas.nombre1, ' y ', max_longevas.nombre2);
end.

{ 
Un centro de investigación de la UNLP está organizando la información de las 320 especies de plantas con las
que trabajan. Para cada especie se ingresa su nombre científico, tiempo promedio de vida (en meses), tipo de
planta (por ej. árbol, conífera, arbusto, helecho, musgo, etc.), clima (templado, continental, subtropical,
desértico, etc.) y países en el mundo donde se las encuentra. La información de las plantas se ingresa
ordenada por tipo de planta​ , y para cada planta, la lectura de países donde se las encuentra finaliza al ingresar
el país 'zzz'.
Al finalizar la lectura, informar:
a. El tipo de planta con menor cantidad de plantas--> tipo_menor_cantidad :string 
b. El tiempo promedio de vida de las plantas de cada tipo:
		sumaTiemposDeVida / cantidadPlantas
c. El nombre científico de las dos plantas más longevas:
		registro max:maximos
			nombre1:string;
			nombre2:string;
			max1:real;
			max2:real;

d. Los nombres de las plantas nativas de Argentina que se encuentran en regiones con clima subtropical
		si p.pais = argentina and p.clima = subrtropical ----> informar p.nombre
e. El nombre de la planta que se encuentra en más países  nombre_max; max_paises.
		Esto tendria que evaluar si el nombre de cada nueva planta ingresada es igual al nombre anterior		
	
			}

{
	registro planta:
	nombre_cient: string;
	t_vida : Real;
	tipo : string;
	clima : string;

for 1 to 320
	1er parametro de control---> tipo.  tipo_actual : p.tipo--> analizo todas las de ese tipo.

}