-- c04ex07.adb

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure C04EX07 is
   Numero : Integer;
   Pausa  : Character;
begin
   Put("Entre um numero inteiro: ");
   Get(Numero);

   if (Numero >= 20) and then (Numero <= 90) then
      Put_Line("O numero esta na faixa de 20 a 90.");
   else
      Put_Line("O numero esta fora da faixa de 20 a 90.");
   end if;

   New_Line;
   Put("Tecle <Enter> para encerrar... ");
   Get_Immediate(Pausa);
end C04EX07;
