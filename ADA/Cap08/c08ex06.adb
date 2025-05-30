-- c08ex06.adb

with Ada.Text_IO;                    use Ada.Text_IO;
with Ada.Integer_Text_IO;            use Ada.Integer_Text_IO;
with Ada.Strings.Unbounded;          use Ada.Strings.Unbounded;
with Ada.Strings.Unbounded.Text_IO;  use Ada.Strings.Unbounded.Text_IO;
with Ada.Characters.Handling;        use Ada.Characters.Handling;

procedure C08EX06 is

   NUMERO : array (1 .. 10) of Integer;
   X, PESQ, COMECO, FINAL, MEIO : Integer;
   ACHA                         : Boolean;
   RESP, RESPOSTA               : Unbounded_String;
   Pausa                        : Character;

begin
   Put_Line("PESQUISA BINARIA DE NUMEROS");
   New_Line;

   for I in 1 .. 10 loop
      Put("Entre o ");
      Put(I, Width => 2);
      Put("o. numero: ");
      Get(NUMERO(I));
   end loop;

   for I in 1 .. 9 loop
      for J in I + 1 .. 10 loop
         if (NUMERO(I) > NUMERO(J)) then
            X := NUMERO(I);
            NUMERO(I) := NUMERO(J);
            NUMERO(J) := X;
         end if;
      end loop;
   end loop;

   RESP := To_Unbounded_String("SIM");
   while (To_String(RESP) = "SIM") loop
      New_Line;
      Put("Entre o numero a ser pesquisado: ");
      Get(PESQ);

      COMECO := 1;
      FINAL := 10;
      ACHA := False;

      while (COMECO <= FINAL) and (ACHA = False) loop
         MEIO := (COMECO + FINAL) / 2;
         if PESQ = NUMERO(MEIO) then
            ACHA := True;
         else
            if PESQ < NUMERO(MEIO) then
               FINAL := MEIO - 1;
            else
               COMECO := MEIO + 1;
            end if;
         end if;
      end loop;

      if (ACHA = True) then
         New_Line;
         Put_Line(Integer'Image(PESQ) & " foi localizado na posicao " 
            & Integer'Image(MEIO));
      else
         New_Line;
         Put_Line(Integer'Image(PESQ) & " nao foi localizado");
      end if;

      New_Line;
      loop
         Put("Deseja continuar? (SIM/NAO): ");
         Skip_Line;
         RESPOSTA := Get_Line;
         RESP := To_Unbounded_String(To_Upper(To_String(RESPOSTA)));
         if (To_String(RESP) /= "SIM") and (To_String(RESP) /= "NAO") then
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
end C08EX06;
