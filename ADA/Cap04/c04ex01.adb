-- c04ex01.adb

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure C04EX01 is
   A, B, X : Integer;
   Pausa   : Character;
begin
   Put("Entre o 1o. valor numerico: ");
   Get(A);

   Put("Entre o 2o. valor numerico: ");
   Get(B);

   X := A + B;

   if (X > 10) then
      Put_Line("Resultado = " & Integer'Image(X));
   end if;

   New_Line;
   Put("Tecle <Enter> para encerrar... ");
   Get_Immediate(Pausa); 
end C04EX01;
