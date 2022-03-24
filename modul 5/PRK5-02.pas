program nama ;
uses crt;
var 
ulang: char;
nama : string;
label awal;
begin
  awal:
  clrscr;
  write('Input nama  : '); readln(nama);
  writeln(nama );
  write('Input lagi? y/n : '); readln(ulang);
    if (ulang = 'y') OR (ulang = 'Y') then
     goto awal
    else
     writeln(nama);
  readkey;
end.