-- c07ex09.adb

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure C07EX09 is

   function FATORIAL_BASE(N, P : Integer) return Integer is
   begin
      if (N = 0) then
         return P;
      else
         return FATORIAL_BASE(N - 1, N * P);
      end if;
   end FATORIAL_BASE;

   function FATORIAL(N : Integer) return Integer is
   begin
      return FATORIAL_BASE(N, 1);
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
end C07EX09;
