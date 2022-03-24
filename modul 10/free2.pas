program sdata;
uses crt;
var n,m,i,j: integer;
 a:array[1..20,1..20] of real;
begin
clrscr;
writeln('TUGAS STRUKTUR DATA');
writeln;
write('Masukan Banyaknya Baris : '); readln(n);
write('Masukan Banyaknya Kolom : '); readln(m);
 writeln;
 writeln;
writeln ('Mulai Untuk Input Elemen Matriks Anda') ;
for i:=1 to n do
    begin
    for j:=1 to m do
        begin
        write ('Elemen A : ');
        readln (a[i,j]);
        end;
    end;
    writeln;
    writeln;
writeln ('Bentuk Matriks Anda :');
for i:=1 to n do
    begin
    for j:=1 to m do
        write ('   ',a[i,j]:0:0);
    writeln;
    end;
writeln;
readln;
end.