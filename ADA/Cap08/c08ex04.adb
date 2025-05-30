-- c08ex04.adb

with Ada.Text_IO;                    use Ada.Text_IO;
with Ada.Strings.Unbounded;          use Ada.Strings.Unbounded;
with Ada.Strings.Unbounded.Text_IO;  use Ada.Strings.Unbounded.Text_IO;

procedure C08EX04 is

   Nomes : array (1 .. 5) of Unbounded_String;
   X     : Unbounded_String;
   Pausa : Character;

begin
   Put_Line("CLASSIFICACAO DE NOMES (DECRESCENTE)");
   New_Line;

   for I in 1 .. 5 loop
      Put("Entre o " & Integer'Image(I) & "o. nome: ");
      Nomes(I) := Get_Line;
   end loop;

   for I in 1 .. 4 loop
      for J in I + 1 .. 5 loop
         if To_String(Nomes(I)) < To_String(Nomes(J)) then
            X := Nomes(I);
            Nomes(I) := Nomes(J);
            Nomes(J) := X;
         end if;
      end loop;
   end loop;

   New_Line;
   for I in 1 .. 5 loop
      Put_Line(Integer'Image(I) & "o. nome: " & To_String(Nomes(I)));
   end loop;

   New_Line;
   Put("Tecle <Enter> para encerrar... ");
   Get_Immediate(Pausa);
end C08EX04;
