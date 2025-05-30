-- c07ex03.adb

with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure C07EX03 is

   A, B  : Integer;
   Pausa : Character; 

   procedure TROCA is
      X : Integer;
   begin
      X := A;
      A := B;
      B := X;
   end TROCA;

begin
   Put("Entre um valor para a variavel <A>: ");
   Get(A);

   Put("Entre um valor para a variavel <B>: ");
   Get(B);

   TROCA;

   New_Line;

   Put("Variavel <A> com valor ");
   Put(A, 0);
   New_Line;

   Put("Variavel <B> com valor ");
   Put(B, 0);
   New_Line;

   New_Line;
   Put("Tecle <Enter> para encerrar... ");
   Get_Immediate(Pausa); 
end C07EX03;
