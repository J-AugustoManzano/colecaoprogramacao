-- c08ex05.adb

with Ada.Text_IO;                    use Ada.Text_IO;
with Ada.Strings.Unbounded;          use Ada.Strings.Unbounded;
with Ada.Strings.Unbounded.Text_IO;  use Ada.Strings.Unbounded.Text_IO;
with Ada.Characters.Handling;        use Ada.Characters.Handling;
with Ada.Text_IO;                    use Ada.Text_IO;
with Ada.Integer_Text_IO;            use Ada.Integer_Text_IO;

procedure C08EX05 is

   NOME     : array (1 .. 10) of Unbounded_String;
   RESP     : Unbounded_String;
   PESQ     : Unbounded_String;
   RESPOSTA : Unbounded_String;
   I        : Integer;
   ACHA     : Boolean;
   Pausa    : Character;

begin
   Put_Line("PESQUISA SEQUENCIAL DE NOMES");
   New_Line;

   for Indice in 1 .. 10 loop
      Put("Entre o ");
      Ada.Integer_Text_IO.Put(Indice, Width => 2);
      Put("o. nome: ");
      NOME(Indice) := Get_Line;
   end loop;

   RESP := To_Unbounded_String("SIM");

   while (To_String(RESP) = "SIM") loop
      New_Line;
      Put("Entre o nome a ser pesquisado: ");
      PESQ := Get_Line;

      I := 1;
      ACHA := False;

      while (I <= 10) and (ACHA = False) loop
         if (To_String(PESQ) = To_String(NOME(I))) then
            ACHA := True;
         else
            I := I + 1;
         end if;
      end loop;

      if (ACHA = True) then
         New_Line;
         Put_Line(To_String(PESQ) & " foi localizado na posicao " 
            & Integer'Image(I));
      else
         New_Line;
         Put_Line(To_String(PESQ) & " nao foi localizado");
      end if;

      New_Line;
      loop
         Put("Deseja continuar? (SIM/NAO): ");
         RESPOSTA := Get_Line;
         RESP := To_Unbounded_String(To_Upper(To_String(RESPOSTA)));
         if (To_String(RESP) /= "SIM") and (To_String(RESP) /= "NAO") then
            New_Line;
            Put_Line("Informe apenas SIM ou NAO.");
            New_Line;
         else
            exit;
         end if;
      end loop;
   end loop;

   New_Line;
   Put("Tecle <Enter> para encerrar... ");
   Get_Immediate(Pausa);
end C08EX05;
