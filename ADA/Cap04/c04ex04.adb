-- c04ex04.adb

with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Float_Text_IO;   use Ada.Float_Text_IO;

procedure C04EX04 is
   N1, N2, N3, N4, NE : Float;
   MD1, MD2           : Float;
   Pausa              : Character;
begin
   Put("Entre a 1a. nota .......: ");
   Get(N1);

   Put("Entre a 2a. nota .......: ");
   Get(N2);

   Put("Entre a 3a. nota .......: ");
   Get(N3);

   Put("Entre a 4a. nota .......: ");
   Get(N4);
   New_Line;

   MD1 := (N1 + N2 + N3 + N4) / 4.0;

   if (MD1 >= 7.0) then
      Put_Line("Aprovado");
      Put("Media: ");
      Put(MD1, Fore => 2, Aft => 2, Exp => 0);
      New_Line;
   else
      Put("Entre a nota de exame ..: ");
      Get(NE);
      New_Line;

      MD2 := (MD1 + NE) / 2.0;

      if (MD2 >= 5.0) then
         Put_Line("Aprovado em exame");
      else
         Put_Line("Reprovado");
      end if;

      Put("Media: ");
      Put(MD2, Fore => 2, Aft => 2, Exp => 0);
      New_Line;
   end if;

   New_Line;
   Put("Tecle <Enter> para encerrar... ");
   Get_Immediate(Pausa);
end C04EX04;
