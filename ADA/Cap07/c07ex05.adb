-- c07ex05.adb

with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure C07EX05 is

   procedure FATORIAL(N : Integer; FAT : in out Integer) is
   begin
      FAT := 1;
      for I in 1 .. N loop
         FAT := FAT * I;
      end loop;
   end FATORIAL;

   RESP, LIMITE : Integer;
   Pausa        : Character;

begin
   RESP := 1;

   Put("Qual fatorial: ");
   Get(LIMITE);
   Skip_Line;

   FATORIAL(LIMITE, RESP);

   Put_Line("Fatorial = " & Integer'Image(RESP));

   New_Line;
   Put("Tecle <Enter> para encerrar... ");
   Get_Immediate(Pausa);
end C07EX05;
