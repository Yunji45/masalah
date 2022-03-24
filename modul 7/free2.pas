program awal_akhir;
uses crt;
var 
i ,awal,akhir,total : integer;
begin
i :=0;
total:=0;
writeln('========Program Looping===========');
writeln('Input Nilai Awal : '); read(awal);
writeln('Input Nilai Akhir : '); read(akhir );
for i:=awal to akhir do 
write(i);
total:=(akhir-awal)+1;
writeln(' total adalah : ', total);
end.