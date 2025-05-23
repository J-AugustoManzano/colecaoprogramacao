program c08ex10;

function FibonacciBase(N, X, Y: Integer): Integer;
begin
  if (N = 0) then
    FibonacciBase := X;
  if (N = 1) then
    FibonacciBase := Y;
  if (N >= 0) then
    FibonacciBase := FibonacciBase(N - 1, Y, X + Y);
end;

function Fibonacci(N: Integer): Integer;
begin
  Fibonacci := FibonacciBase(N, 0, 1);
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
