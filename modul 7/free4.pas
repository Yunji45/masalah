program fibonacci;
uses crt;
var
  b1, b2, t: integer;
  n: integer;

begin
  clrscr;
  write ('Input Banyaknya Bilangan : ');read(n);

  b1 := 1;
  b2 := 0;
  write(b2, ' ', b1, ' ');

  while (n > 2) do
  begin
    t := b1 + b2;  // penjumlahan Fibonacci
    write(t, ' '); // mencetak variable t

    // menukar nilai variable
    b2 := b1;
    b1 := t;

    n := n-1; // mengurangi nilai n agar tidak terjadi infinite loop
  end;

  readln;
end.