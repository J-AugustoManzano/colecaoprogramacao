-- c04ex06.adb

with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Float_Text_IO;   use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure C04EX06 is
   A, B  : Float;
   Opcao : Integer;
   Pausa : Character;
begin
   Put("Entre o 1o. valor numerico: ");
   Get(A);

   Put("Entre o 2o. valor numerico: ");
   Get(B);

   New_Line;
   Put_Line("Escolha uma opcao de menu:");
   New_Line;
   Put_Line("[1] - Adicao");
   Put_Line("[2] - Subtracao");
   Put_Line("[3] - Multiplicacao");
   Put_Line("[4] - Divisao");
   New_Line;

   Put("==> ");
   Get(Opcao);
   New_Line;

   case (Opcao) is
      when 1 =>
         Put_Line("Calculo de adicao");
         Put("Resultado: ");
         Put(A + B, Fore => 0, Aft => 2, Exp => 0);
         New_Line;
      when 2 =>
         Put_Line("Calculo de subtracao");
         Put("Resultado: ");
         Put(A - B, Fore => 0, Aft => 2, Exp => 0);
         New_Line;
      when 3 =>
         Put_Line("Calculo de multiplicacao");
         Put("Resultado: ");
         Put(A * B, Fore => 0, Aft => 2, Exp => 0);
         New_Line;
      when 4 =>
         Put_Line("Calculo de divisao");
         if (B = 0.0) then
            Put_Line("Resultado: ERRO");
         else
            Put("Resultado: ");
            Put(A / B, Fore => 0, Aft => 2, Exp => 0);
            New_Line;
         end if;
      when others =>
         Put_Line("Entrada invalida");
         Put_Line("Tente novamente em outro momento");
   end case;

   New_Line;
   Put("Tecle <Enter> para encerrar... ");
   Get_Immediate(Pausa);
end C04EX06;
