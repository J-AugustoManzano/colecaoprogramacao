-- c06ex02.adb

with Ada.Text_IO;          use Ada.Text_IO;
with Ada.Float_Text_IO;    use Ada.Float_Text_IO;
with Ada.Integer_Text_IO;  use Ada.Integer_Text_IO;

procedure C06EX02 is
   NOTAS : array (1 .. 8, 1 .. 4) of Float;
   Pausa : Character;
begin
   for I in 1 .. 8 loop
      Put("Entre as notas do aluno ");
      Put(I, 0);
      New_Line;

      for J in 1 .. 4 loop
         Put("Nota ");
         Put(J, 0);
         Put(": ");
         Get(NOTAS(I, J));
      end loop;

      New_Line;
   end loop;

   New_Line;
   Put_Line("RELATORIO DE NOTAS");
   New_Line;
   Put_Line("Aluno Nota1 Nota2 Nota3 Nota4");
   Put_Line("----- ----- ----- ----- -----");

   for I in 1 .. 8 loop
      Put(I, Width => 5);
      Put(" ");
      for J in 1 .. 4 loop
         Put(NOTAS(I, J), Fore => 3, Aft => 1, Exp => 0);
         Put(" ");
      end loop;
      New_Line;
   end loop;

   New_Line;
   Put("Tecle <Enter> para encerrar... ");
   Get_Immediate(Pausa);
end C06EX02;
