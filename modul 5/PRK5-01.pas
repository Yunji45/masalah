program looping;
  uses crt;
var
  i,j: integer;
begin
  clrscr;
  for i:=1 to 10 do 
  begin
  writeln (i,'.atik ',' ',i+10,'.atik ',' ', i+20,'.atik ',' ',i+30,'.atik')
  end;
     
  readln;
end.
