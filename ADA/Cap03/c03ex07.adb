-- c03ex07.adb

with Ada.Text_IO;        use Ada.Text_IO;
with Ada.Strings.Fixed;  use Ada.Strings.Fixed;

procedure C03EX07 is
   Frase          : String := "Aprendendo Ada com o Professor Manzano";
   Palavras       : array (1 .. 10) of String(1 .. 20);
   Tamanhos       : array (1 .. 10) of Natural := (others => 0);
   ContaPalavra   : Natural := 0;
   PosIni, PosFim : Positive := 1;
   Indice         : Positive := 1;
   TamPalavra     : Natural := 0;  
   Posicao        : Natural := 0;  
   Pausa          : Character;

begin
   Put_Line("Frase ......: " & Frase);
   Put_Line("              --------------------------------------");
   Put_Line("              00000000011111111112222222222333333333");
   Put_Line("              01234567890123456789012345678901234567");
   New_Line;

   Put_Line("Tamanho ....: " & Integer'Image(Frase'Length) & " caracteres");
   New_Line;

   while (Indice <= Frase'Length) loop
      if (Frase(Indice) = ' ') then
         PosFim := Indice - 1;
         ContaPalavra := ContaPalavra + 1;
         TamPalavra := PosFim - PosIni + 1;
         Palavras(ContaPalavra)(1 .. TamPalavra) := Frase(PosIni .. PosFim);
         Tamanhos(ContaPalavra) := TamPalavra;
         PosIni := Indice + 1;
      end if;
      Indice := Indice + 1;
   end loop;

   ContaPalavra := ContaPalavra + 1;
   TamPalavra := Frase'Length - PosIni + 1;
   Palavras(ContaPalavra)(1 .. TamPalavra) := Frase(PosIni .. Frase'Length);
   Tamanhos(ContaPalavra) := TamPalavra;

   for J in 1 .. 4 loop
      Put_Line("Palavra  .............: " & Palavras(J)(1 .. Tamanhos(J)));
   end loop;

   New_Line;
   Put_Line("Letra 1 da Palavra 1 ..: " & Palavras(1)(1));
   Put_Line("Letra 2 da Palavra 1 ..: " & Palavras(1)(2));
   Put_Line("Letra 3 da Palavra 1 ..: " & Palavras(1)(3));
   Put_Line("Letra 4 da Palavra 1 ..: " & Palavras(1)(4));
   New_Line;

   Posicao := Index(Source => Frase, Pattern => "Ada");
   Put_Line("A palavra 'Ada' na posicao: " & Integer'Image(Posicao));

   New_Line;
   Put("Tecle <Enter> para encerrar... ");
   Get_Immediate(Pausa);
end C03EX07;
