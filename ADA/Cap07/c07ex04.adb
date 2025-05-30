-- c07ex04.adb

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure C07EX04 is

   procedure Fatorial(N : Integer) is
      Fat : Integer;
   begin
      Fat := 1;
      for I in 1 .. N loop
         Fat := Fat * I;
      end loop;
      Put_Line("Fatorial = " & Integer'Image(Fat));
   end Fatorial;

   Limite : Integer;
   Pausa  : Character; 

begin
   Put("Qual fatorial: ");
   Get(Limite);
   Skip_Line;

   Fatorial(Limite);

   New_Line;
   Put("Tecle <Enter> para encerrar... ");
   Get_Immediate(Pausa);
end C07EX04;
