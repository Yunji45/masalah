program data;
uses crt;
const
     Username = '11210163';
     Password = 'Atikah';

type mhs = record

    nama:string[15];
    nim:longint;
    jurusan:string;
    JenisKelamin:char;
    uts,uas,na,tugas,rata: integer;
    grade: char;
    end;

var dataMhs:array [1..100] of mhs;
    i,n,x:integer;
    z,total,tinggi,rendah: real;
    JenisKelamin:char;
    Namauser, Pass :string;
    ulang : char;
    label awal;

procedure input;
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
  clrscr;
  write('Masukkan Jumlah Data : '); readln(n);
  clrscr;
  for i:=1 to n do
  with dataMhs[i] do
  begin
    awal :
    writeln('Data ke-',i);
    write('Nama  : '); readln(nama);
    write('NIM   : '); readln(nim);
    write('JENIS KELAMIN : '); readln(JenisKelamin);
    write('JURUSAN: ');readln(jurusan);
    write('UTS : '); readln(uts);
    write('UAS : ');readln(uas);
    write('TUGAS : ');readln(tugas);
    write('Apakah ingin input ulang ? : ');readln(ulang);
    while (ulang = 'y') OR (ulang = 'Y') do
     begin
     input;
     end;
      na:=(uas+uts+tugas);
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

    writeln;
  end;
  readkey;
end;

procedure output;
begin
  clrscr;
  writeln(' _________________________________________________________________________________');
  writeln('| NO |    NIM    |  NAMA      | SEKS | JURUSAN | UTS | UAS  | TUGAS |N.A |GRADE | ');
  writeln('|-------------------------------------------------------------------------------|');
  writeln('|    |           |            |      |         |     |      |       |    |      |');
  for i:=1 to n do
    with dataMhs[i] do
    begin
      writeln('|    |           |            |      |         |     |      |       |    |      |');
      gotoxy(3,i+3); writeln(i);
      gotoxy(8,i+3); writeln(nim);
      gotoxy(20,i+3); writeln(nama);
      gotoxy(32,i+3); writeln(JenisKelamin);
      gotoxy(40,i+3); writeln(jurusan);
      gotoxy(50,i+3); writeln(uts);
      gotoxy(55,i+3); writeln(uas);
      gotoxy(63,i+3); writeln(tugas);
      gotoxy(70,i+3); writeln(na);
      gotoxy(77,i+3); writeln(grade);
      
    end;
  writeln('|_________________________________________________________________________________|');
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
  end;


{Program Utama}
begin
  input;
  output;
end.