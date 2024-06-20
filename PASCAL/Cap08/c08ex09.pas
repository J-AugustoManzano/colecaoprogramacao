program c08ex09;

function Fibonacci(N: Integer): Integer;
begin
  if (N = 0) then
    Fibonacci := 0;
  if (N = 1) then
    Fibonacci := 1;
  if (N >= 2) then
    Fibonacci := Fibonacci(N - 1) + Fibonacci(N - 2);
end;

var
  I: Integer;

begin
  for I := 0 to 14 do
    WriteLn(I:2, ' - ', Fibonacci(I));
  WriteLn;
  Write('Tecle <Enter> para encerrar... ');
  ReadLn;
end.
