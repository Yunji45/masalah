//Program Menu POS MAIN yang terintegrasi api dalam Penjualan
program integrasi;
uses crt;
var
pil : integer;
begin
    clrscr;
    writeln('============MENU PILIHAN===========');
    writeln ('1.Identitas Pribadi');
    writeln ('2.Sales ');
    writeln ('3.Stock');
    writeln ('4.Operasional');
    writeln ('Silahkan Pilih Menu : ');
    readln(pil);

    case (pil) of
        1 : begin
            writeln('NAMA : ATIKAH LUTFIANI');
            writeln('NPM : 11210163');
            writeln('TTL : CIAMIS , 12 DESEMBER 2001');
            writeln('JENIS KELAMIN : PEREMPUAN');
            writeln('GOL DARAH : A');
            writeln('ALAMAT : KERTAHARJA RT 29/08 DESA KERTAHAYU KEC.PAMARICAN KAB.CIAMIS PROV.JABAR');
            end;
        2 : begin
            wirteln ('a.Pos Kasir');
            writeln ('b.Retur Sales');
            writeln ('c.Laporan Sales');
            end;
        3 : begin
            writeln('a.Penerimaan Barang');
            writeln('b.Query Stock LPPTK');
            end;
        4 : begin
            writeln('a.Program Pendukung');
            writeln('b.Cetak Register Document');
            writeln('c.Berita Acara Pemusnahan');
            end;
        readln;
end.