-- c04ex05.adb

with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure C04EX05 is
   Mes   : Integer;
   Pausa : Character;
begin
   Put("Entre com um numero equivalente a um mes: ");
   Get(Mes);

   case (Mes) is
      when 1  => Put_Line("Janeiro");
      when 2  => Put_Line("Fevereiro");
      when 3  => Put_Line("Marco");
      when 4  => Put_Line("Abril");
      when 5  => Put_Line("Maio");
      when 6  => Put_Line("Junho");
      when 7  => Put_Line("Julho");
      when 8  => Put_Line("Agosto");
      when 9  => Put_Line("Setembro");
      when 10 => Put_Line("Outubro");
      when 11 => Put_Line("Novembro");
      when 12 => Put_Line("Dezembro");
      when others => Put_Line("Mes invalido");
   end case;

   New_Line;
   Put("Tecle <Enter> para encerrar... ");
   Get_Immediate(Pausa);
end C04EX05;
