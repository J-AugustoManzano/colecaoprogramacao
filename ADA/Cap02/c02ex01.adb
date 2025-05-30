-- c02ex01.adb

with Ada.Text_IO; use Ada.Text_IO;

procedure C02EX01 is
begin
   -- Operações aritméticas diretas

   Put_Line(Integer'Image(5 + 3));     -- Saída:  8
   Put_Line(Integer'Image(10 - 4));    -- Saída:  6
   Put_Line(Integer'Image(2 * 6));     -- Saída: 12
   Put_Line(Float'Image(10.0 / 3.0));  -- Saída: 3.33333E+00
   Put_Line(Integer'Image(10 / 3));    -- Saída: 3
   Put_Line(Integer'Image(10 mod 3));  -- Saída: 1

   -- Operadores unários
   Put_Line(Integer'Image(+5));        -- Saída:  5
   Put_Line(Integer'Image(-8));        -- Saída: -8

   -- Exponenciação
   Put_Line(Integer'Image(2 ** 3));    -- Saída: 8
end C02EX01;
