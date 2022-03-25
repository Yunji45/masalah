uses crt;

   var i,n: integer;
   nama: string;


   
    begin
    write('Masukkan Jumlah Data : '); readln(n);
    clrscr; randomize; 
    for i:= 1 to n do
    begin
      writeln('Nama : ', CHR(98));
      writeln('NIM   : ',random(10000));
      writeln('Kehadiran : ',random(16));
      writeln('UTS : ',random(100));
      writeln('UAS : ',random(100));
      na:=(uas+uts);
      rata:= (uas+uts) div 3;
      if (rata <= 100) and (rata >=80) then
      grade:='A'
      else
      if (rata <= 79) and (rata >=60) then
      grade:='B'
      else
      if (rata <= 59) and (rata >=40) then
      grade:='C'
      else
      if (rata <= 39) and (rata >=20) then
      grade:='D'
      else
      if (rata <= 19) and (rata >=0) then
      grade:='E';
    end;
    readln;
   end.