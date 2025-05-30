-- c07ex06.adb

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure C07EX06 is

   function FATORIAL(N : Integer) return Integer is
      FAT : Integer := 1;
   begin
      for I in 1 .. N loop
         FAT := FAT * I;
      end loop;
      return FAT;
   end FATORIAL;

   LIMITE : Integer;
   Pausa  : Character;

begin
   Put("Qual fatorial: ");
   Get(LIMITE);

   Put("Fatorial = ");
   Put(FATORIAL(LIMITE), 0);
   New_Line;
   
   New_Line;
   Put("Tecle <Enter> para encerrar... ");
   Get_Immediate(Pausa); 
end C07EX06;
