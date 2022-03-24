program absensi;
uses crt ;
type
    mahasiswa = record
    nim : real;
    nama : string[30] ;
    kehadiran: real;
    uts: real;
    uas: real;
    akhir: real;
    indeks : real;
end;

var 
database : file of mahasiswa;
data : mahasiswa;
recMhs : array[1..50]of mahasiswa ;
byk: byte;
input,j,n,x: integer;
lagi: char;
l : real;



procedure buka_data;
begin
    assign(database,'data.txt');{$I-}
    reset(database);{$I+}
end;

procedure InputDataMhs;
begin
    
    clrscr;
    assign(database,'database.txt');
    rewrite(database);
    reset (database);
    write('Masukkan jumlah mahasiswa: '); readln(byk);
    for j:= 1 to byk do
    begin
    writeln('INPUT DATA');
    write('NIM : '); readln(recMhs[j].nim) ;
    write('Nama : '); readln(recMhs[j].nama) ;
    write('Kehadiran: '); readln(recMhs[j].kehadiran) ;
    write('UTS: '); readln(recMhs[j].uts) ;
    write('UAS: '); readln(recMhs[j].uas) ;
    writeln;
    end;
end;

procedure LaporanData;
begin
    clrscr;
    writeln('==============================================================================');
    writeln('                       LAPORAN DAFTAR ABSENSI');
    writeln('------------------------------------------------------------------------------');
    writeln('| NO| NIM      | NAMA      | KEHADIRAN     | UTS   | UAS  | AKHIR  | INDEKS       |');
    writeln('------------------------------------------------------------------------------------');
    writeln('|   |          |           |               |       |      |        |              |');
    gotoxy(3,j+7);writeln(j);
    gotoxy(8,j+3);writeln(recMhs[j].nim:0:1) ;
    gotoxy(20,j+3);writeln(recMhs[j].nama) ;
    gotoxy(32,j+3);writeln(recMhs[j].kehadiran:0:1) ;
    gotoxy(40,j+3);writeln(recMhs[j].uts:0:1) ;
    gotoxy(50,j+3);writeln(recMhs[j].uas:0:1) ;
    gotoxy(55,j+3);writeln(recMhs[j].akhir:0:1);
    gotoxy(63,j+3);writeln(recMhs[j].indeks:0:1);
    writeln('|   |          |           |               |       |      |        |              |');
    writeln('-------------------------------------------------------------------------------');
    recMhs[j].akhir:= 0.4 * recMhs[j].uts + 0.6 * recMhs[j].uas ;
    recMhs[j].indeks:= 0.7*recMhs[j].kehadiran;
    for j:=1 to byk do
    with recMhs[j] do
    x:=0;
    for j:=1 to byk do
    begin
        x:= x+j;
    end;
end;
begin
    InputDataMhs;
    LaporanData;
    
end.