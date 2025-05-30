-- c03ex08.adb

with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure C03EX08 is
   -- Declaração das variáveis inteiras A, B e X
   A, B, X : Integer;
   Pausa   : Character;
begin
   -- Programa exemplo para operações de duas entradas
   -- com cálculo de adição e apresentação do resultado.

   Put_Line("ADICAO DE NUMEROS");
   New_Line;

   -- Entrada de dados
   Put("Entre o 1o. valor numerico: ");
   Get(A);

   Put("Entre o 2o. valor numerico: ");
   Get(B);

   -- Processamento de dados
   X := A + B;  -- Cálculo da adição

   -- Saída de dados
   Put_Line("Resultado = " & Integer'Image(X));

   New_Line;
   Put("Tecle <Enter> para encerrar... ");
   Get_Immediate(Pausa);
end C03EX08;
