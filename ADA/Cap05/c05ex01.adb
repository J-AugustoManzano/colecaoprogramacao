-- c05ex01.adb

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure C05EX01 is
   I, N, R : Integer;
   Pausa   : Character;
begin
   I := 1;
   while (I <= 5) loop
      Put("Entre um valor numerico: ");
      Get(N);

      R := N * 3;

      Put_Line("Resultado = " & Integer'Image(R));
      New_Line;

      I := I + 1;
   end loop;

   New_Line;
   Put("Tecle <Enter> para encerrar... ");
   Get_Immediate(Pausa); 
end C05EX01;
