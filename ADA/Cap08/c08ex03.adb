-- c08ex03.adb

with Ada.Text_IO;          use Ada.Text_IO;
with Ada.Integer_Text_IO;  use Ada.Integer_Text_IO;

procedure C08EX03 is

   type Lista_5 is array (1 .. 5) of Integer;
   Numeros : Lista_5;
   X       : Integer;
   Pausa   : Character;

begin
   Put_Line("CLASSIFICACAO DE NUMEROS (CRESCENTE)");
   New_Line;

   for I in 1 .. 5 loop
      Put("Entre o ");
      Put(I, Width => 1);
      Put("o. numero: ");
      Get(Numeros(I));
   end loop;

   for I in 1 .. 4 loop
      for J in I + 1 .. 5 loop
         if (Numeros(I) > Numeros(J)) then
            X := Numeros(I);
            Numeros(I) := Numeros(J);
            Numeros(J) := X;
         end if;
      end loop;
   end loop;

   New_Line;
   for I in 1 .. 5 loop
      Put(I, Width => 1);
      Put("o. numero: ");
      Put_Line(Integer'Image(Numeros(I)));
   end loop;

   New_Line;
   Put("Tecle <Enter> para encerrar... ");
   Get_Immediate(Pausa);
end C08EX03;
