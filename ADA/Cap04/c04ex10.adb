-- c04ex10.adb

with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure C04EX10 is
   A, B, X, C : Integer;
   Pausa      : Character;
begin
   Put("Entre valor para a variavel <A>: ");
   Get(A);

   Put("Entre valor para a variavel <B>: ");
   Get(B);

   Put("Entre valor para a variavel <X>: ");
   Get(X);

   if (not (X > 5)) then
      C := A + B;
   else
      C := A - B;
   end if;

   New_Line;
   Put_Line("Resultado = " & Integer'Image(C));

   New_Line;
   Put("Tecle <Enter> para encerrar... ");
   Get_Immediate(Pausa);
end C04EX10;
