-- c04ex02.adb

with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure C04EX02 is
   A, B, X : Integer;
   Pausa   : Character;
begin
   Put("Entre o 1o. valor numerico: ");
   Get(A);

   Put("Entre o 2o. valor numerico: ");
   Get(B);

   if (A > B) then
      X := A;
      A := B;
      B := X;
   end if;

   Put("Os valores sao: ");
   Put(A, 0);
   Put(" e ");
   Put(B, 0);
   Put_Line(".");

   New_Line;
   Put("Tecle <Enter> para encerrar... ");
   Get_Immediate(Pausa);
end C04EX02;
