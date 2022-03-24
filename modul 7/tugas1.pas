program struktur_case;
uses crt;
var
  bulan: integer;
begin
  clrscr;
  write('Silahkan input angka untuk bulan (1-12): ');
  readln(bulan);
   
  case (bulan) of
     1 : begin
            writeln('NAMA : ATIKAH LUTFIANI');
            writeln('NPM : 11210163');
            writeln('TTL : CIAMIS , 12 DESEMBER 2001');
            writeln('JENIS KELAMIN : PEREMPUAN');
            writeln('GOL DARAH : A');
            writeln('ALAMAT : KERTAHARJA RT 29/08 DESA KERTAHAYU KEC.PAMARICAN KAB.CIAMIS PROV.JABAR');
        end;
     2 : begin 
            writeln('a.Pos Kasir');
            writeln('b.Retur Sales');
            writeln('c.Laporan Sales');
        end;
     3 : writeln('Maret');
     4 : writeln('April'); 
  end;
   
  readln;
end.