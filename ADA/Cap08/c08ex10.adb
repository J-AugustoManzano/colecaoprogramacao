-- c08ex10.adb

with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure c08ex10 is

   function FibonacciBase(N, X, Y : Integer) return Integer is
   begin
      if (N = 0) then
         return X;
      end if;
      if (N = 1) then
         return Y;
      end if;
      if (N >= 0) then
         return FibonacciBase(N - 1, Y, X + Y);
      end if;
      return 0;
   end FibonacciBase;

   function Fibonacci(N : Integer) return Integer is
   begin
      return FibonacciBase(N, 0, 1);
   end Fibonacci;
   
   Pausa : Character;

begin
   for I in 0 .. 14 loop
      Put(I, Width => 2);
      Put(" - ");
      Put(Fibonacci(I), 0);
      New_Line;
   end loop;

   New_Line;
   Put("Tecle <Enter> para encerrar... ");
   Get_Immediate(Pausa);
end c08ex10;
