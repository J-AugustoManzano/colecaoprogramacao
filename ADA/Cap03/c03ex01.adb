-- c03ex01.adb

with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure C03EX01 is
   A, B, X : Integer;
   Pausa   : Character;

begin
   Put("Entre o 1o. valor numerico inteiro: ");
   Get(A);

   Put("Entre o 2o. valor numerico inteiro: ");
   Get(B);

   X := A + B;

   Put("Resultado = ");
   Put(X);
   New_Line;

   New_Line;
   Put("Tecle <Enter> para encerrar... ");
   Get_Immediate(Pausa); 
end C03EX01;
