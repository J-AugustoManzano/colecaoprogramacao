-- c07ex01.adb

with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Float_Text_IO;   use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure C07EX01 is

   procedure ROTSOMA is
      A1, B1, R1 : Float;
   begin
      New_Line;
      Put_Line("Rotina de Adicao");
      New_Line;
      Put("Entre o 1o. valor: ");
      Get(A1);
      Skip_Line;
      Put("Entre o 2o. valor: ");
      Get(B1);
      Skip_Line;
      New_Line;
      R1 := A1 + B1;
      Put("O resultado da operacao equivale a: ");
      Put(R1, Fore => 0, Aft => 2, Exp => 0);
      New_Line;
      New_Line;
   end ROTSOMA;

   procedure ROTSUBTRACAO is
      A2, B2, R2 : Float;
   begin
      New_Line;
      Put_Line("Rotina de Subtracao");
      New_Line;
      Put("Entre o 1o. valor: ");
      Get(A2);
      Skip_Line;
      Put("Entre o 2o. valor: ");
      Get(B2);
      Skip_Line;
      New_Line;
      R2 := A2 - B2;
      Put("O resultado da operacao equivale a: ");
      Put(R2, Fore => 0, Aft => 2, Exp => 0);
      New_Line;
      New_Line;
   end ROTSUBTRACAO;

   procedure ROTMULTIPLICACAO is
      A3, B3, R3 : Float;
   begin
      New_Line;
      Put_Line("Rotina de Multiplicacao");
      New_Line;
      Put("Entre o 1o. valor: ");
      Get(A3);
      Skip_Line;
      Put("Entre o 2o. valor: ");
      Get(B3);
      Skip_Line;
      New_Line;
      R3 := A3 * B3;
      Put("O resultado da operacao equivale a: ");
      Put(R3, Fore => 0, Aft => 2, Exp => 0);
      New_Line;
      New_Line;
   end ROTMULTIPLICACAO;

   procedure ROTDIVISAO is
      A4, B4, R4 : Float;
   begin
      New_Line;
      Put_Line("Rotina de Divisao");
      New_Line;
      Put("Entre o 1o. valor: ");
      Get(A4);
      Skip_Line;
      Put("Entre o 2o. valor: ");
      Get(B4);
      Skip_Line;
      New_Line;
      if (B4 = 0.0) then
         Put_Line("O resultado da operacao equivale a: ERRO");
      else
         R4 := A4 / B4;
         Put("O resultado da operacao equivale a: ");
         Put(R4, Fore => 0, Aft => 2, Exp => 0);
         New_Line;
      end if;
      New_Line;
   end ROTDIVISAO;

   OPCAO : Integer := 0;

begin
   while (OPCAO /= 5) loop
      Put_Line("CALCULADORA - V1");
      New_Line;
      Put_Line("[1] - Adicao");
      Put_Line("[2] - Subtracao");
      Put_Line("[3] - Multiplicacao");
      Put_Line("[4] - Divisao");
      Put_Line("[5] - Fim de Programa");
      New_Line;
      Put("Escolha uma opcao: ");
      Get(OPCAO);
      Skip_Line;
      if (OPCAO /= 5) then
         case (OPCAO) is
            when 1 => ROTSOMA;
            when 2 => ROTSUBTRACAO;
            when 3 => ROTMULTIPLICACAO;
            when 4 => ROTDIVISAO;
            when others =>
               New_Line;
               Put_Line("Opcao invalida - Tente novamente");
               New_Line;
         end case;
      end if;
   end loop;
end C07EX01;
