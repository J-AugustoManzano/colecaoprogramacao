program c06ex03;

type
  TAluno = Record
    Nome: String;
    Turma: Char;
    Sala: Integer;
    Notas: array[1..4] of Real;
  end;

var
  ALUNO: array[1..8] of TAluno;
  I, J: Integer;

begin
  WriteLn('Escola de Computacao XPTO');
  WriteLn('Cadastro Escolar de Aluno');
  WriteLn;

  for I := 1 to 8 do
    begin
      WriteLn('Aluno: ', I);
      WriteLn;

      Write('Nome ..............: ');
      ReadLn(ALUNO[I].Nome);

      Write('Turma .............: ');
      ReadLn(ALUNO[I].Turma);

      Write('Sala ..............: ');
      ReadLn(ALUNO[I].Sala);
      WriteLn;

      for J := 1 to 4 do
        begin
          Write('Entre a ', J, 'a. nota ..: ');
          ReadLn(ALUNO[I].Notas[J]);
        end;

      WriteLn;
    end;

  WriteLn('Escola de Computacao XPTO');
  WriteLn('Cadastro Escolar de Aluno');
  WriteLn;
  WriteLn('DADOS DOS ALUNOS');
  Write('Aluno ');
  Write('Nome                           ');
  Write('Sala ');
  Write('Turma ');
  Write('Nota1 ');
  Write('Nota2 ');
  Write('Nota3 ');
  Write('Nota4 ');
  WriteLn;
  Write('----- ');
  Write('------------------------------ ');
  Write('---- ');
  Write('----- ');
  Write('----- ');
  Write('----- ');
  Write('----- ');
  Write('----- ');
  WriteLn;

  for I := 1 to 8 do
    begin
      Write(I:5, ' ');
      Write(ALUNO[I].Nome:30, ' ');
      Write(ALUNO[I].Sala:4, ' ');
      Write(ALUNO[I].Turma:5, ' ');
      for J := 1 to 4 do
        Write(ALUNO[I].Notas[J]:5:1, ' ');
      WriteLn;
    end;

  WriteLn;
  Write('Tecle <Enter> para encerrar... ');
  ReadLn;
end.
