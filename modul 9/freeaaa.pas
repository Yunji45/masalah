uses crt;
Type
    recdata=record
                  nim,nama : string;
                  grade : char;
                  uts,uas,sks,tugas,jumlah,rata,index :integer;
                  end;
var
   dtsiswa : array [1..5] of recdata;
   dummy   : recdata;
   i,j,uts,uas,sks,tugas,jumlah,rata,index :integer;
   nim,nama : string;
   grade :char;
procedure entry;
begin
     for i:=1 to 5 do
     begin
          with dtsiswa[i] do
          begin
               clrscr;
               writeln('entry data ke-',i,' :');
               writeln('-----------------');
               write ('no induk     :');readln(nim);
               write ('nama siswa   :');readln(nama);
               write ('      sks    :');readln(sks);
               write ('nilai uts    :');readln(uts);
               write ('nilai uas    :');readln(uas);
               write ('nilai tugas  :');readln(tugas);

                     jumlah:=(uas+uts+tugas);
                     rata:= (uas+uts+tugas) div 3;


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

                     case grade of
                     'A':index :=sks*4;
                     'B':index :=sks*3;
                     'C':index :=sks*2;
                     'D':index :=sks*1;
                     'E':index :=sks*0;
                     end;

                     writeln;
                     writeln('jumlah :',jumlah);
                     writeln('rata   :',rata);
                     writeln('grade  :',grade);
                     writeln('index  :',index);
               readln;
          end;
     end;
end;

procedure list;
begin
     writeln('no induk    nama sks uts uas tugas jumlah rata2 grade index');
     writeln('-----------------------------------------------------------------');
     for i:=1 to 5 do
     begin
          with dtsiswa[i] do
          begin
           writeln(nim:7,nama:10,sks:2,uts:5,uas:5,tugas:5,jumlah:5,rata:6,grade:6,index:7);
          end;
     end;
end;

procedure sort;
begin
     for i:=1 to 5 do
     begin
          for j:=1 to 4 do
          begin
              if dtsiswa[j].grade > dtsiswa[j+1].grade then
              begin
                    dummy:=dtsiswa[j];
                    dtsiswa[j]:=dtsiswa[j+1];
                    dtsiswa[j+1]:=dummy;
              end;
          end;
     end;
end;

begin
     clrscr;
     entry;
     clrscr;
     list;
     sort;
     list;
     readln;
end.