program StrukturCase;
uses crt;
var 
pil : integer;
begin
    clrscr;
    writeln('==========MENU MAKANAN ==========');
    writeln('Daftar Menu : ');
    writeln('1.Masakan Indinesia');
    writeln('2.Masakan Korea');
    writeln('3.Masakan Jepang');
    writeln('4.Masakan Prancis ');
    writeln('Silahkan Pilih Menu Makanan 1-4: ');
    readln(pil);

    case (pil) of
        1 :begin
            writeln('Padang');
            writeln('Sunda');
            writeln('Jawa ');
            writeln('Betawi');
            end;
        2 : begin
            writeln('Sushi,sukiyaki');
            writeln('Sashimi ,Oshizushi');
            writeln('Ramen');
            writeln('Yakiniku,Takoyaki');
            end;
        3 : begin
            writeln('Kimchi,Bulgogi');
            writeln('Kimbap, Bibimbap');
            writeln('Ramyeon');
            writeln('Jajangmyein');
            end;
        4 : begin
            writeln('EsCargot,Foie Gras');
            writeln('Soupe aloignon');
            writeln('BeefBaourguignon');
            writeln('CoqauVini');
            end;
    end;
    
    readln;
end.