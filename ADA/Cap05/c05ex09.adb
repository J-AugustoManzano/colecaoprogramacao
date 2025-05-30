-- c05ex09.adb

with Ada.Text_IO;             use Ada.Text_IO;
with Ada.Integer_Text_IO;     use Ada.Integer_Text_IO;
with Ada.Characters.Handling; use Ada.Characters.Handling;

procedure C05EX09 is
   I, N, R : Integer;
   Pausa  : Character;
begin
   I := 1;

   loop
      Put("Entre um valor numerico: ");
      Get(N);

      R := N * 3;

      Put_Line("Resultado = " & Integer'Image(R));
      New_Line;

      exit when (I > 4);

      I := I + 1;
   end loop;

   New_Line;
   Put("Tecle <Enter> para encerrar... ");
   Get_Immediate(Pausa);
end C05EX09;
