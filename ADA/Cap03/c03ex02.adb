-- c03ex02.adb

with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Float_Text_IO;   use Ada.Float_Text_IO;
with Ada.Numerics;

procedure C03EX02 is
   R, A : Float;
   Pausa : Character;
begin
   Put("Entre valor do raio: ");
   Get(R);

   A := Ada.Numerics.Pi * R**2;

   Put("Resultado = ");
   Put(A, Fore => 1, Aft => 2, Exp => 0);
   New_Line;

   New_Line;
   Put("Tecle <Enter> para encerrar... ");
   Get_Immediate(Pausa);
end C03EX02;
