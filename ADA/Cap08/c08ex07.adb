-- c08ex07.adb

with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure C08EX07 is

   LIMITE : constant Integer := 10;
   MATRIZ : array (1 .. LIMITE) of Integer;
   TOPO   : Integer := 0;

   function Vazia return Boolean is
   begin
      if (TOPO = 0) then
         return True;
      else
         return False;
      end if;
   end Vazia;

   function Cheia return Boolean is
   begin
      if (TOPO = LIMITE) then
         return True;
      else
         return False;
      end if;
   end Cheia;

   function Adicionar(ELEMENTO : Integer) return Boolean is
   begin
      if (Cheia) then
         return False;
      else
         TOPO := TOPO + 1;
         MATRIZ(TOPO) := ELEMENTO;
         return True;
      end if;
   end Adicionar;

   function Retirar(ELEMENTO : out Integer) return Boolean is
   begin
      if (Vazia) then
         return False;
      else
         ELEMENTO := MATRIZ(TOPO);
         MATRIZ(TOPO) := 0;
         TOPO := TOPO - 1;
         return True;
      end if;
   end Retirar;

   procedure Empilhar is
      X : Integer;
   begin
      Put("Entre com um elemento numerico: ");
      Get(X);
      Skip_Line;
      New_Line;
      if (Adicionar(X)) then
         Put_Line("Elemento " & Integer'Image(X) &
            " inserido na posicao " & Integer'Image(TOPO) & ".");
      else
         Put_Line("Impossivel adicionar " & Integer'Image(X) &
            " - pilha cheia.");
      end if;
      New_Line;
   end Empilhar;

   procedure Desempilhar is
      ELEMENTO : Integer;
   begin
      if (Retirar(ELEMENTO)) then
         Put_Line("Elemento " & Integer'Image(ELEMENTO) &
            " retirado do topo da pilha.");
      else
         Put_Line("Impossivel retirar elemento - pilha vazia.");
      end if;
      New_Line;
   end Desempilhar;

   procedure Mostrar is
   begin
      if (not Vazia) then
         for I in reverse 1 .. TOPO loop
            Put(Item => I, Width => 2);
            Put(" = ");
            Put_Line(Integer'Image(MATRIZ(I)));
         end loop;
      else
         Put_Line("Impossivel apresentar - pilha vazia.");
      end if;
      New_Line;
   end Mostrar;

   procedure Criar is
   begin
      TOPO := 0;
      for I in 1 .. LIMITE loop
         MATRIZ(I) := 0;
      end loop;
   end Criar;

   Opcao : Integer;

begin
   Criar;
   Opcao := 0;
   while (Opcao /= 5) loop
      Put_Line("PROGRAMA: PILHA");
      New_Line;
      Put_Line("[1] - Empilhar");
      Put_Line("[2] - Desempilhar");
      Put_Line("[3] - Mostrar");
      Put_Line("[4] - Criar pilha");
      Put_Line("[5] - Sair");
      New_Line;
      Put("Escolha uma opcao: ");
      Get(Opcao);
      Skip_Line;
      New_Line;

      case (Opcao) is
         when 1 => Empilhar;
         when 2 => Desempilhar;
         when 3 => Mostrar;
         when 4 => Criar;
         when 5 => null;
         when others =>
            Put_Line("Opcao invalida. Tente novamente.");
            New_Line;
      end case;
   end loop;
end C08EX07;
