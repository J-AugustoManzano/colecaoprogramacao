// c06ex03.pike

#!/usr/bin/env pike

import Stdio;

mixed CAD_ALUNO = (
  [
    "NOME": "",
    "TURMA": "",
    "SALA": 0,
    "NOTAS": allocate(4, 0.0)
  ]
);

int main() 
{
  mixed ALUNOS = allocate(8, CAD_ALUNO);
  int I, J;
  string NOME_AUX, TURMA_AUX;

  write("Escola de Computacao XPTO\n");
  write("Cadastro Escolar de Aluno\n\n");
	
  for (I = 0; I <= 7; I++) {
    write(sprintf("ALUNO %d\n\n", I + 1));

    write("Entre o nome ......: ");
    NOME_AUX = stdin->gets();
    ALUNOS[I]["NOME"] = NOME_AUX[0..strlen(NOME_AUX) - 2];

    write("Entre a turma .....: ");
    TURMA_AUX = stdin->gets();
    ALUNOS[I]["TURMA"] = TURMA_AUX[0..strlen(TURMA_AUX) - 2];
        
    write("Entre a sala ......: ");
    ALUNOS[I]["SALA"] = (int)stdin->gets();
    write("\n");
    
    for (J = 0; J <= 3; J++) {
      write(sprintf("Entre a %da. nota ..: ", J + 1));
      ALUNOS[I]["NOTAS"][J] = (float)stdin->gets();
    }
    write("\n");
  }

  write("DADOS DOS ALUNOS\n");
  write(sprintf("%5s ", "Aluno"));
  write(sprintf("%-30s", "Nome"));
  write(sprintf("%4s ", "Sala"));
  write(sprintf("%5s ", "Nota1"));
  write(sprintf("%5s ", "Nota2"));
  write(sprintf("%5s ", "Nota3"));
  write(sprintf("%5s\n", "Nota4"));

  write(sprintf("%5s", "-----"));
  write(sprintf("%-30s ", "------------------------------"));
  write(sprintf("%4s ", "----"));
  write(sprintf("%5s ", "-----"));
  write(sprintf("%5s ", "-----"));
  write(sprintf("%5s ", "-----"));
  write(sprintf("%5s\n", "-----"));
  
  for (I = 0; I <= 7; I++) {
    write(sprintf("%5d ", I + 1));
    write(sprintf("%-30.30s ", ALUNOS[I]["NOME"]));
    write(sprintf("%3d ", ALUNOS[I]["SALA"]));
    for (J = 0; J <= 3; J++)
      write(sprintf("%5.1f ", ALUNOS[I]["NOTAS"][J]));
    write("\n");
  }

  return 0;
}
