program ej8;
	var ch1, ch2, ch3: char;
			cont: Integer;		
begin
	cont := 0;
	readln(ch1);
	writeln('letra ', ch1);
	readln(ch2);
	writeln('letra ', ch2);
	readln(ch3);
	writeln('letra ', ch3);	
	if ((ch1 = 'a') or (ch1 = 'e') or (ch1 = 'i') or (ch1 = 'o') or (ch1 = 'u')) then
		cont := cont + 1;
	if ((ch2 = 'a') or (ch2 = 'e') or (ch2 = 'i') or (ch2 = 'o') or (ch2 = 'u')) then
		cont := cont + 1;	
	if ((ch3 = 'a') or (ch3 = 'e') or (ch3 = 'i') or (ch3 = 'o') or (ch3 = 'u')) then
		cont := cont + 1;
	if (cont = 3) then				
	writeln('Los tres caracteres eran vocales')
	else
	writeln('al menos un caracter fue vocal');	
end.