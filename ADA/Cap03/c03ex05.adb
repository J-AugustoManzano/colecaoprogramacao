-- c03ex05.adb

with Ada.Text_IO; use Ada.Text_IO;

procedure C03EX05 is
   Nome    : String (1 .. 50);
   Tamanho : Natural;
   Pausa   : Character;
begin
   Put("Entre seu nome: ");
   Get_Line(Nome, Tamanho);

   Put("Ola, ");
   Put(Nome(1 .. Tamanho));
   Put_Line("! Bem-vindo ao estudo de Ada.");

   New_Line;
   Put("Tecle <Enter> para encerrar... ");
   Get_Immediate(Pausa);
end C03EX05;
