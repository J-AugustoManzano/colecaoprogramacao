-- c04ex03.adb

with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure C04EX03 is
   A, B, X, R : Integer;
   Pausa      : Character;
begin
   Put("Entre o 1o. valor numerico: ");
   Get(A);

   Put("Entre o 2o. valor numerico: ");
   Get(B);

   X := A + B;

   if (X >= 10) then
      R := X + 5;
   else
      R := X - 7;
   end if;

   Put("Resultado = ");
   Put(R, 0); 
   New_Line;

   New_Line;
   Put("Tecle <Enter> para encerrar... ");
   Get_Immediate(Pausa);
end C04EX03;
