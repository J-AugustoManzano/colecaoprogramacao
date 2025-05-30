-- c08ex09.adb

with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure c08ex09 is

   function Fibonacci(N : Integer) return Integer is
   begin
      if (N = 0) then
         return 0;
      end if;
      if (N = 1) then
         return 1;
      end if;
      if (N >= 2) then
         return Fibonacci(N - 1) + Fibonacci(N - 2);
      end if;
      return 0;
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
end c08ex09;
