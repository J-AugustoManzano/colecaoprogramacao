-- c07ex07.adb

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure C07EX07 is

   function IGUAL(A, B : Integer) return Boolean is
   begin
      return A = B;
   end IGUAL;

   X, Y  : Integer;
   Pausa : Character;

begin
   Put("Informe o 1o. valor: ");
   Get(X);

   Put("Informe o 2o. valor: ");
   Get(Y);

   if (IGUAL(X, Y)) then
      Put_Line("Valores sao iguais");
   else
      Put_Line("Valores sao diferentes");
   end if;

   New_Line;
   Put("Tecle <Enter> para encerrar... ");
   Get_Immediate(Pausa);
end C07EX07;
