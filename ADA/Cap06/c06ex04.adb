-- c06ex04.adb

with Ada.Text_IO;            use Ada.Text_IO;
with Ada.Integer_Text_IO;    use Ada.Integer_Text_IO;
with Ada.Strings.Unbounded;  use Ada.Strings.Unbounded;

procedure C06Ex04 is
   N     : Integer;
   Pausa : Character;
begin
   Put("Entre a quantidade de elementos da matriz: ");
   Get(N);
   Skip_Line;
   New_Line;

   declare
      A : array (Positive range <>) of Unbounded_String := 
             (1 .. N => To_Unbounded_String("")); 
   begin
      for I in A'Range loop
         Put("Entre o " & Integer'Image(I) & "o. nome: ");
         declare
            Entrada : String(1..200);
            Last    : Natural;
         begin
            Get_Line(Entrada, Last);
            A(I) := To_Unbounded_String(Entrada(1..Last));
         end;
      end loop;

      New_Line;
      Put_Line("Foram fornecidos os nomes:");
      New_Line;

      for I in A'Range loop
         Put_Line("Nome " & Integer'Image(I) & " = " 
            & To_String(A(I)));
      end loop;
   end;

   New_Line;
   Put("Tecle <Enter> para encerrar... ");
   Get_Immediate(Pausa);
end C06Ex04;
