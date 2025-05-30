-- c08ex02.adb

with Ada.Text_IO;                    use Ada.Text_IO;
with Ada.Strings.Unbounded;          use Ada.Strings.Unbounded;
with Ada.Strings.Unbounded.Text_IO;  use Ada.Strings.Unbounded.Text_IO;

procedure C08EX02 is

   function validaNumero(Entrada : Unbounded_String) return Boolean is
      valorNum    : constant String := To_String(Entrada);
      Conta_Ponto : Natural := 0;
   begin
      if (valorNum'Length = 0) then
         return False;
      end if;

      for C of valorNum loop
         if (C = '.') then
            Conta_Ponto := Conta_Ponto + 1;
            if (Conta_Ponto > 1) then
               return False;
            end if;
         else
            if (not (C in '0' .. '9')) then
               return False;
            end if;
         end if;
      end loop;

      return True;
   end validaNumero;

   Entrada : Unbounded_String;
   Pausa   : Character;

begin
   loop
      Put("Entre um valor numerico: ");
      Entrada := Get_Line;
      New_Line;

      if (Length(Entrada) = 0) then
         Put_Line("Erro: Tecla <Enter> acionada acidentalmente.");
         New_Line;
      else
         if (not validaNumero(Entrada)) then
            Put_Line("Erro: Entre um numero valido.");
            New_Line;
         else
            exit;
         end if;
      end if;
   end loop;

   Put_Line("Entrada valida fornecida: " & To_String(Entrada));

   New_Line;
   Put("Tecle <Enter> para encerrar... ");
   Get_Immediate(Pausa);
end C08EX02;
