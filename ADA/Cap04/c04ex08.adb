-- c04ex08.adb

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Characters.Handling; use Ada.Characters.Handling;

procedure C04EX08 is
   Transp : Character;
   Pausa  : Character;
begin
   Put_Line("Escolha o tipo de transporte:");
   New_Line;
   Put_Line("[M] - Motocicleta");
   Put_Line("[S] - Scooter");
   New_Line;

   Put("==> ");
   Get(Transp);
   New_Line;

   if (To_Upper(Transp) = 'M') or (To_Upper(Transp) = 'S') then
      Put_Line("Transporte valido.");
   else
      Put_Line("Transporte invalido.");
   end if;

   New_Line;
   Put("Tecle <Enter> para encerrar... ");
   Get_Immediate(Pausa);
end C04EX08;
