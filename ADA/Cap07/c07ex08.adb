-- c07ex08.adb

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure C07EX08 is

   function FATORIAL(N : Integer) return Integer is
   begin
      if (N = 0) then
         return 1;
      else
         return N * FATORIAL(N - 1);
      end if;
   end FATORIAL;

   LIMITE : Integer;
   Pausa  : Character;

begin
   Put("Qual fatorial: ");
   Get(LIMITE);

   Put("Fatorial = ");
   Put(FATORIAL(LIMITE), 0);

   New_Line;
   Put("Tecle <Enter> para encerrar... ");
   Get_Immediate(Pausa);
end C07EX08;
