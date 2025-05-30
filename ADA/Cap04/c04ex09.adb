-- c04ex09.adb

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure C04EX09 is
   P1, P2 : Integer;
   Pausa  : Character;
begin
   Put_Line("Classificacao esportiva");
   New_Line;
   Put_Line("Entre '1' se atleta pontuou na 1a. prova");
   Put_Line("Entre '1' se atleta pontuou na 2a. prova");
   Put_Line("Qualquer outro valor se nao pontuou nas provas");
   New_Line;

   Put("Prova 1: ");
   Get(P1);

   Put("Prova 2: ");
   Get(P2);

   if (P1 = 1) xor (P2 = 1) then
      Put_Line("Atleta participa da terceira prova.");
   else
      Put_Line("Atleta nao participa da terceira prova.");
      if (P1 = 1) and (P2 = 1) then
         Put_Line("Classificado para a final.");
      else
         Put_Line("Desclassificado da competicao.");
      end if;
   end if;

   New_Line;
   Put("Tecle <Enter> para encerrar... ");
   Get_Immediate(Pausa);
end C04EX09;
