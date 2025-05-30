-- c06ex01.adb

with Ada.Text_IO;              use Ada.Text_IO;
with Ada.Float_Text_IO;        use Ada.Float_Text_IO;
with Ada.Integer_Text_IO;      use Ada.Integer_Text_IO;

procedure C06EX01 is
   MD    : array (1 .. 8) of Float;
   SOMA  : Float := 0.0;
   MEDIA : Float;
   Pausa : Character;
begin
   for I in 1 .. 8 loop
      Put("Entre a media do aluno ");
      Put(I, 0); 
      Put(": ");
      Get(MD(I));

      SOMA := SOMA + MD(I);
   end loop;

   MEDIA := SOMA / 8.0;

   New_Line;
   Put("Media geral: ");
   Put(MEDIA, Fore => 5, Aft => 2, Exp => 0);

   New_Line(2);
   Put("Tecle <Enter> para encerrar... ");
   Get_Immediate(Pausa);
end C06EX01;
