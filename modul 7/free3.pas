program bilanganKelipatan;
uses crt;
var
i,calc,jumlah,input:integer;

begin
clrscr;
write('Berapa kali loop ? : ');readln(input);
write('Deret angka : ');
for i := 1 to input do
begin
    calc := i * input;
    write(calc, ' ');
    jumlah := jumlah + calc;
end;
writeln('');
writeln('');
writeln('Jumlah : ', jumlah);
readln;
end.