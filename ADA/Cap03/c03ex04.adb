-- c03ex04.adb

with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Float_Text_IO;   use Ada.Float_Text_IO;

procedure C03EX04 is
   HT, VH, PD, SB, TD, SL : Float;
   Pausa : Character;
begin
   Put("Entre quantidade de horas trabalhadas ..: ");
   Get(HT);

   Put("Entre valor do salario-hora ............: ");
   Get(VH);

   Put("Entre valor do percentual de desconto ..: ");
   Get(PD);

   SB := HT * VH;
   TD := (PD / 100.0) * SB;
   SL := SB - TD;

   New_Line;
   Put("Salario Bruto ....: ");
   Put(SB, Fore => 5, Aft => 2, Exp => 0);
   New_Line;

   Put("Salario Liquido ..: ");
   Put(SL, Fore => 5, Aft => 2, Exp => 0);
   New_Line;

   New_Line;
   Put("Tecle <Enter> para encerrar... ");
   Get_Immediate(Pausa);
end C03EX04;
