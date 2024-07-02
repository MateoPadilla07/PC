program NumerosComprendidos;

var
  num1, num2, suma: integer;
  i: integer;

begin

  write('Ingresa el primer numero: ');
  readln(num1);

  write('Ingresa otro numero: ');
  readln(num2);

  suma := 0;

  if num1 <= num2 then
  begin
    for i := num1 to num2 do
    begin
      suma := suma + i;
    end;
  end
  else
  begin
    for i := num2 to num1 do
    begin
      suma := suma + i;
    end;
  end;

  writeln('La suma de los numeros entre ', num1, ' y ', num2, ' es: ', suma);

end.
////////////////////////////////////////////////////////////////
program numeroscons;

uses 
 crt;

var
 numero, i: integer;

begin

 writeln('Ingrese un numero: ')
 readln(numero);
 writeln('Los 20 numeros consecutivos son: ');

 for i : numero to numero + 19 do 

 begin

  write(i, ' ');

 end;
end.
////////////////////////////////////////////////////////////////
program NumerosConsecutivos;

var
  numeros: array[1..10] of integer;
  i: integer;
  hayConsecutivo: boolean;

begin

  writeln('Ingresa 10 numeros:');
  for i := 1 to 10 do
  begin
    write('Numero ', i, ': ');
    readln(numeros[i]);
  end;

  hayConsecutivo := false;
  for i := 2 to 10 do
  begin
    if numeros[i] = numeros[i-1] + 1 then
    begin
      hayConsecutivo := true;
      break;
    end;
  end;

  if hayConsecutivo then
    writeln('Si')
  else
    writeln('No');

end.
////////////////////////////////////////////////////////////////
program NumerosConsecutivos;

var
  numero, i, contador: integer;

begin
  write('Ingresa un numero: ');
  readln(numero);

  contador := 0;

  if numero mod 2 = 0 then
  begin
    writeln('Los proximos 10 numeros pares consecutivos son:');
    i := numero + 2;
    while contador < 10 do
    begin
      writeln(i);
      i := i + 2;
      contador := contador + 1;
    end;
  end
  else
  begin
    writeln('Los 10 numeros impares anteriores son:');
    i := numero - 1;
    while contador < 10 do
    begin
      writeln(i);
      i := i - 2;
      contador := contador + 1;
    end;
  end;
end.
////////////////////////////////////////////////////////////////
program numero_intermedios;

var
  num, num2, i: integer;
  seguir: char;

begin
  repeat
    clrscr;

    writeln('Escribe un numero: ');
    readln(num);

    writeln('Escribe otro numero mayor al primero: ');
    readln(num2);

    while num2 <= num do
    begin
      writeln('El segundo numero debe ser mayor al primero.');
      writeln('Escribe otro numero mayor al primero: ');
      readln(num2);
    end;

    writeln('Los numeros intermedios son: ');
    for i := num + 1 to num2 - 1 do
      writeln(i);

    writeln;
    writeln('¿Desea seguir? (s/n): ');
    readln(seguir);
  until (LowerCase(seguir) <> 's');

end.
