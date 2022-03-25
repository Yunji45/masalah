program data;
uses crt;
const
     Username = 'ngodingmulu';
     Password = 'gapunyaayang';

type mhs = record

    nama:string[15];
    nim:longint;
    kehadiran:integer;
    uts,uas,na,rata: integer;
    grade: char;
    end;

var dataMhs:array [1..100] of mhs;
    database : file of mhs;
    i,n,x,angka:integer;
    z,total,tinggi,rendah: real;
    Namauser, Pass :string;
    ulang : char;

procedure buka_database;
begin
    assign(database,'data.txt');{$I-}
    reset(database);{$I+}
end;


procedure login;
begin
    {Membuat tampilan akses login}
     gotoxy(32,10);
     write('<<<<< LOGIN >>>>>');
     gotoxy(30,12);
     write('Username : '); readln(Namauser);
     gotoxy(30,13);
     write('Password : '); readln(Pass);


     {Mengecek Validasi Username dan Password}
     while (Namauser <> Username) or (Pass <> Password) do
     begin
          gotoxy(30,14);
          textcolor(red);write('Login Gagal!');
          readln();
          gotoxy(30,14);clreol;
          gotoxy(41,12);clreol;
          gotoxy(41,13);clreol;
          textcolor(15);
          gotoxy(41,12);readln(Namauser);
          gotoxy(41,13);readln(Pass);
     end;
end;

procedure otomatis;
begin
    write('Masukkan Jumlah Data : '); readln(n);
    clrscr; randomize; 
    with dataMhs[i] do
    for i:= 1 to n do
    begin
      writeln('Nama : ', CHR(100));
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
    readkey;
   end;

procedure ngacak;
begin
  buka_database;
  clrscr;randomize;
  writeln('========================DAFTAR NILAI OTOMATIS=====================');
  writeln(' _________________________________________________________________');
  writeln('| NO |    NIM    |  NAMA      | Kehadiran|UTS | UAS  |N.A |Indeks | ');
  writeln('|-----------------------------------------------------------------|');
  writeln('|    |           |            |          |    |      |    |       |  ');
  for i:=1 to n do
    with dataMhs[i] do
    begin
      writeln('|    |           |            |     |      |    |          |');
      gotoxy(3,i+3); writeln(i);
      gotoxy(8,i+3); writeln(random(1000));
      gotoxy(20,i+3); writeln(CHR(100));
      gotoxy(32,i+3); writeln(random(16));
      gotoxy(43,i+3); writeln(random(100));
      gotoxy(50,i+3); writeln(random(100));
      gotoxy(55,i+3); writeln(na);
      gotoxy(60,i+3); writeln(grade);
      
    end;
  writeln('|____________________________________________________________|');
  for i:= 1 to n do
  with dataMhs[i] do
    x := 0;
    for i:=1 to n do
    begin
        x := x+i;
    end;
    z := x/n;
    writeln('Nilai Rata-rata adalah :',z:0:2);
    total := 0;
    for i := 1 to n do
    with dataMhs[i] do
    begin
    total := total + rata;
    if i= 1 then 
    begin
    tinggi := rata;
    rendah := rata;
    end;
    if rata > tinggi then tinggi := rata
    else 
    if rata < rendah then rendah := rata;
    end;
    writeln ('nilai terendah    : ', rendah:2:0);
    writeln ('nilai tertinggi   : ', tinggi:2:0);
    close(database);
  end;

procedure input;
begin
    assign(database,'database.txt');
    rewrite (database);
    reset(database);
  clrscr;
  write('Masukkan Jumlah Data : '); readln(n);
  clrscr;
  for i:=1 to n do
  with dataMhs[i] do
  begin
    writeln('Data ke-',i);
    write('Nama  : '); readln(nama);
    write('NIM   : '); readln(nim);
    write('Kehadiran : ');readln(kehadiran);
    write('UTS : '); readln(uts);
    write('UAS : ');readln(uas);
    write('Apakah ingin input ulang ? : ');readln(ulang);
    while (ulang = 'y') OR (ulang = 'Y') do
     begin
     input;
     end;
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

    writeln;
  end;
  readkey;
end;

procedure ouput;
begin
buka_database;
  clrscr;
  writeln('===================DAFTAR NILAI MANUAL ==========================');
  writeln(' _________________________________________________________________');
  writeln('| NO |    NIM    |  NAMA      | Kehadiran|UTS | UAS  |N.A |Indeks | ');
  writeln('|-----------------------------------------------------------------|');
  writeln('|    |           |            |          |    |      |    |       |  ');
  for i:=1 to n do
    with dataMhs[i] do
    begin
      writeln('|    |           |            |     |      |    |          |');
      gotoxy(3,i+3); writeln(i);
      gotoxy(8,i+3); writeln(nim);
      gotoxy(20,i+3); writeln(nama);
      gotoxy(32,i+3); writeln(kehadiran);
      gotoxy(43,i+3); writeln(uts);
      gotoxy(50,i+3); writeln(uas);
      gotoxy(55,i+3); writeln(na);
      gotoxy(60,i+3); writeln(grade);
      
    end;
  writeln('|____________________________________________________________|');
  for i:= 1 to n do
  with dataMhs[i] do
    x := 0;
    for i:=1 to n do
    begin
        x := x+i;
    end;
    z := x/n;
    writeln('Nilai Rata-rata adalah :',z:0:2);
    total := 0;
    for i := 1 to n do
    with dataMhs[i] do
    begin
    total := total + rata;
    if i= 1 then 
    begin
    tinggi := rata;
    rendah := rata;
    end;
    if rata > tinggi then tinggi := rata
    else 
    if rata < rendah then rendah := rata;
    end;
    writeln ('nilai terendah    : ', rendah:2:0);
    writeln ('nilai tertinggi   : ', tinggi:2:0);
    close(database);
  end;


{Program Utama}
begin
  login;
  clrscr;
  writeln('selamat datang');
  writeln('1.Input Data Manual');
  writeln('2.Input Data Otomatis');
  writeln('3.laporan manual');
  writeln('4.laporan otomatis');
  writeln('masukan angka: ');readln(angka);
  input;
  ouput;
  otomatis;
  ngacak;

end.