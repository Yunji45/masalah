program MATRIK;
uses crt;
type data = array[1..100,1..100] of integer;
var matrikI,matrikII : data;
    baris,kolom,pil : integer;

procedure isimatrik;
var  i,j : integer;
begin
    writeln('MATRIK I');
    write('Masukan banyak baris = ');readln(baris);
    write('Masukan banyak kolom = ');readln(kolom);
    for i:=1 to baris do
        for j:=1 to kolom do
            begin
            gotoxy(j*10,i*5);
            readln(matrikI[i,j]);
            end;
    clrscr;
    writeln('MATRIK II');
    write('Masukan banyak baris = ');readln(baris);
    write('Masukan banyak kolom = ');readln(kolom);
    for i:=1 to baris do
        for j:=1 to kolom do
            begin
            gotoxy(j*10,i*5);
            readln(matrikII[i,j]);
            end;
end;

procedure jumlahmatrik(m1,m2 : data);
var hasil : data;
    i,j   : integer;
begin
    for i:=1 to baris do
        for j:=1 to kolom do
            begin
                hasil[i,j]:=m1[i,j]+m2[i,j];
            end;
    clrscr;
    writeln('Hasil Penjumlahan MATRIK');
    for i:=1 to baris do
        for j:=1 to kolom do
            begin
            gotoxy(j*10,i*5);
            write(hasil[i,j]);
            end;
    readln;
end;

procedure kurangmatrik(m1,m2 : data);
var hasil : data;
    i,j   : integer;
begin
    for i:=1 to baris do
        for j:=1 to kolom do
            begin
                hasil[i,j]:=m1[i,j]-m2[i,j];
            end;
    clrscr;
    writeln('Hasil Penngurangan MATRIK');
    for i:=1 to baris do
        for j:=1 to kolom do
            begin
            gotoxy(j*10,i*5);
            write(hasil[i,j]);
            end;
    readln;
end;

procedure kalimatrik(m1,m2 : data);
var hasil : data;
    i,j,z   : integer;
    begin
    for i:=1 to baris do
        for j:=1 to kolom do
            begin
                hasil[i,j]:=0;
                for z:=1 to baris do
                hasil[i,j]:=hasil[i,j]+matrikI[i,z]*matrikII[z,j];
            end;
    clrscr;
    writeln('Hasil Perkalian MATRIK');
    for i:=1 to baris do
        for j:=1 to kolom do
            begin
            gotoxy(j*10,i*5);
            write(hasil[i,j]);
            end;
    readln;
end;

BEGIN
    repeat
        clrscr;
        writeln('--->>> MENU UTAMA <<<---');
        writeln;
        writeln('[1] Penjumlahan Matrik');
        writeln('[2] Pengurangan Matrik');
        writeln('[3] Perkalian Matrik');
        writeln('[4] Exit Program');
        writeln;
        write('Pilihan = ');readln(pil);
        clrscr;
        case pil of
        1 : begin
                isimatrik;
                jumlahmatrik(matrikI,matrikII);
            end;
        2 : begin
                isimatrik;
                kurangmatrik(matrikI,matrikII);
            end;
        3 : begin
                isimatrik;
                kalimatrik(matrikI,matrikII);
            end;
        4 : ;
        end;
    until pil=4;
end.
