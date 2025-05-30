-- c02ex02.adb

with Ada.Text_IO; 
use  Ada.Text_IO;
with Ada.Float_Text_IO; 
use  Ada.Float_Text_IO;
with Ada.Numerics.Elementary_Functions; 
use  Ada.Numerics.Elementary_Functions;

procedure C02EX02 is
   X : Float := 9.0;
begin
   Put_Line("Abs(-5.0)   = " & Float'Image(Abs(-5.0)));
   Put_Line("Cos(0.0)    = " & Float'Image(Cos(0.0)));
   Put_Line("Exp(1.0)    = " & Float'Image(Exp(1.0)));
   Put_Line("Ln(2.71828) = " & Float'Image(Log(2.71828)));
   Put_Line("Sin(0.0)    = " & Float'Image(Sin(0.0)));
   Put_Line("Sqrt(9.0)   = " & Float'Image(Sqrt(X)));
   Put_Line("Trunc(4.9)  = " & Integer'Image(Integer(4.9)));
end C02EX02;
