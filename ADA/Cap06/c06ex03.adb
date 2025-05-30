-- c06ex03.adb

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure C06EX03 is

   type Bimestre is array (1 .. 4) of Float;

   type TAluno is record
      Nome     : String(1 .. 30);
      Nome_Len : Natural := 0;    
      Turma    : Character;
      Sala     : Integer;
      Notas    : Bimestre;
   end record;

   ALUNO : array (1 .. 8) of TAluno;

   Last : Natural; -- variável p/ auxiliar leitura de cadeias (string)
   Pausa : Character;
begin
   Put_Line("Escola de Computacao XPTO");
   Put_Line("Cadastro Escolar de Aluno");
   New_Line;

   for I in 1 .. 8 loop
      Put_Line("Aluno: " & Integer'Image(I));
      New_Line;

      Put("Nome ..............: ");
      Get_Line(ALUNO(I).Nome, Last);
      ALUNO(I).Nome_Len := Last;

      Put("Turma .............: ");
      Get(ALUNO(I).Turma);
      Skip_Line;

      Put("Sala ..............: ");
      Get(ALUNO(I).Sala);
      Skip_Line;
      New_Line;

      for J in 1 .. 4 loop
         Put("Entre a ");
         Put(J, Width => 0);
         Put("a. nota ..: ");
         Get(ALUNO(I).Notas(J));
         Skip_Line;
      end loop;

      New_Line;
   end loop;

   Put_Line("Escola de Computacao XPTO");
   Put_Line("Cadastro Escolar de Aluno");
   New_Line;
   Put_Line("DADOS DOS ALUNOS");

   Put("Aluno ");
   Put("Nome                           ");
   Put("Sala ");
   Put("Turma ");
   Put("Nota1 ");
   Put("Nota2 ");
   Put("Nota3 ");
   Put("Nota4 ");
   New_Line;

   Put("----- ");
   Put("------------------------------ ");
   Put("---- ");
   Put("----- ");
   Put("----- ");
   Put("----- ");
   Put("----- ");
   Put("----- ");
   New_Line;

   for I in 1 .. 8 loop
      Put(I, Width => 5);
      Put(' ');

      Put(ALUNO(I).Nome(1 .. ALUNO(I).Nome_Len));
      for K in ALUNO(I).Nome_Len + 1 .. 30 loop
         Put(' ');
      end loop;

      Put(' ');
      Put(ALUNO(I).Sala, Width => 4);
      Put(' ');

      Put("    "); 
      Put(ALUNO(I).Turma);

      for J in 1 .. 4 loop
         Put(' ');
         Put(ALUNO(I).Notas(J), Fore => 3, Aft => 1, Exp => 0);
      end loop;

      New_Line;
   end loop;

   New_Line;
   Put("Tecle <Enter> para encerrar... ");
   Get_Immediate(Pausa);
end C06EX03;
