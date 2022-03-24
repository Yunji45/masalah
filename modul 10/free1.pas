uses wincrt;
var t:string;
x,y,z:integer;
begin
write('Masukkan suatu kata= ');readln(t);
x:=length(t);
for y:=0 to x do
begin
for z:=1 to x-y do
write(' ',t[z]);
writeln;
end;
readln;
end.