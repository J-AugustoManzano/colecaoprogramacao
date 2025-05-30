-- c03ex06.adb

with Ada.Text_IO;  use Ada.Text_IO;

procedure C03EX06 is
   Palavra       : String := "COMPUTADOR";
   Tamanho       : constant Positive := Palavra'Length;
   Esquerdo      : String := Palavra(1 .. 3);
   Centro        : String := Palavra(4 .. 7);
   Direito       : String := Palavra(Tamanho - 2 .. Tamanho);
   Copias        : String := Palavra & Palavra & Palavra;
   Tira_Pedaco   : String := Palavra(1 .. Tamanho - 3);
   Reverso       : String (1 .. Tamanho);
   Nova_Palavra  : String := Palavra;
   Pausa         : Character;
begin
   for I in Palavra'Range loop
      Reverso(Tamanho - I + 1) := Palavra(I);
   end loop;

   Nova_Palavra(7) := 'O';

   Put_Line("Palavra ........: " & Palavra);
   New_Line;
   Put_Line("Lado esquerdo ..: " & Esquerdo);
   Put_Line("Centro .........: " & Centro);
   Put_Line("Lado direito ...: " & Direito);
   Put_Line("Reverso ........: " & Reverso);
   Put_Line("Copias .........: " & Copias);
   Put_Line("Tira pedaco ....: " & Tira_Pedaco);
   Put_Line("Nova palavra ...: " & Nova_Palavra);
   
   New_Line;
   Put("Tecle <Enter> para encerrar... ");
   Get_Immediate(Pausa);
end C03EX06;
