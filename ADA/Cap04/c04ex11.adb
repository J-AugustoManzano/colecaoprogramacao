-- c04ex11.adb

with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure C04EX11 is
   N     : Integer;
   R4    : Integer;
   R5    : Integer;
   Pausa : Character;
begin
   Put("Entre um numero inteiro: ");
   Get(N);

   R4 := N mod 4;
   R5 := N mod 5;

   if (R4 = 0) and (R5 = 0) then
      Put_Line("Resultado = " & Integer'Image(N));
   else
      Put_Line("Valor nao e divisivel por 4 e 5");
   end if;

   New_Line;
   Put("Tecle <Enter> para encerrar... ");
   Get_Immediate(Pausa);
end C04EX11;
