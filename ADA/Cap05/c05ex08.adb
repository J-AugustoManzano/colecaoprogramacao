-- c05ex08.adb

with Ada.Text_IO;              use Ada.Text_IO;
with Ada.Integer_Text_IO;      use Ada.Integer_Text_IO;
with Ada.Characters.Handling;  use Ada.Characters.Handling;

procedure C05EX08 is
   RESP  : Character;
   N, R  : Integer;
   Pausa : Character;
begin
   RESP := 'S';
   loop
      Put("Entre um valor numerico: ");
      Get(N);

      R := N * 3;

      Put_Line("Resultado = " & Integer'Image(R));
      New_Line;

      Put("Deseja continuar? (S/N): ");
      Get(RESP); 
      Skip_Line;   
      New_Line;

      exit when (not (To_Upper(RESP) = 'S'));  
   end loop;

   New_Line;
   Put("Tecle <Enter> para encerrar... ");
   Get_Immediate(Pausa);
end C05EX08;
