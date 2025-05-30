-- c08ex08.adb

with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure C08Ex08 is

   FIM    : constant Integer := 10;
   MATRIZ : array (1 .. FIM) of Integer;
   INICIO : Integer;

   function Vazia return Boolean is
   begin
      return INICIO = 0;
   end Vazia;

   function Cheia return Boolean is
   begin
      return INICIO = FIM;
   end Cheia;

   function Adicionar (ELEMENTO : Integer) return Boolean is
   begin
      if (Cheia) then
         return False;
      else
         INICIO := INICIO + 1;
         MATRIZ(INICIO) := ELEMENTO;
         return True;
      end if;
   end Adicionar;

   function Retirar (ELEMENTO : out Integer) return Boolean is
   begin
      if (Vazia) then
         return False;
      else
         ELEMENTO := MATRIZ(1);
         for I in 1 .. INICIO - 1 loop
            MATRIZ(I) := MATRIZ(I + 1);
         end loop;
         INICIO := INICIO - 1;
         return True;
      end if;
   end Retirar;

   procedure Entrada is
      X : Integer;
   begin
      Put("Entre com um elemento numerico: ");
      Get(X);
      Skip_Line;
      New_Line;
      if (Adicionar(X)) then
         Put_Line("Elemento " & Integer'Image(X) &
            " inserido na posicao " & Integer'Image(INICIO) & ".");
      else
         Put_Line("Impossivel adicionar " & Integer'Image(X) & 
            " - fila lotada.");
      end if;
      New_Line;
   end Entrada;

   procedure Saida is
      ELEMENTO : Integer;
   begin
      if (Retirar(ELEMENTO)) then
         Put_Line("Elemento " & Integer'Image(ELEMENTO) & 
            " retirado do inicio da fila.");
      else
         Put_Line("Impossivel retirar elemento - fila vazia.");
      end if;
      New_Line;
   end Saida;

   procedure Atual is
   begin
      if not Vazia then
         Put_Line(Integer'Image(MATRIZ(1)) & 
            " - primeiro elemento da fila.");
      else
         Put_Line("Impossivel apresentar - fila vazia.");
      end if;
      New_Line;
   end Atual;

   procedure Exibicao is
   begin
      if not Vazia then
         for I in 1 .. INICIO loop
            Put("Posicao: ");
            Put(I, Width => 2);
            Put(" = ");
            Put_Line(Integer'Image(MATRIZ(I)));
         end loop;
      else
         Put_Line("Impossivel apresentar - fila vazia.");
      end if;
      New_Line;
   end Exibicao;

   procedure Criar is
   begin
      INICIO := 0;
      for I in 1 .. FIM loop
         MATRIZ(I) := 0;
      end loop;
   end Criar;

   OPCAO : Integer;

begin
   Criar;
   OPCAO := 0;
   while OPCAO /= 6 loop
      Put_Line("PROGRAMA: FILA");
      New_Line;
      Put_Line("[1] - Entrada");
      Put_Line("[2] - Saida");
      Put_Line("[3] - Apresentar 1o. da fila");
      Put_Line("[4] - Apresentar a fila");
      Put_Line("[5] - Nova fila");
      Put_Line("[6] - Sair");
      New_Line;
      Put("Escolha uma opcao: ");
      Get(OPCAO);
      Skip_Line;
      New_Line;
      case OPCAO is
         when 1 => Entrada;
         when 2 => Saida;
         when 3 => Atual;
         when 4 => Exibicao;
         when 5 => Criar;
         when 6 => null;
         when others =>
            Put_Line("Opcao invalida. Tente novamente.");
            New_Line;
      end case;
   end loop;
end C08Ex08;
