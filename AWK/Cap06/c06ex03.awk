# c06ex03.awk 

BEGIN {

  print "Escola de Computacao XPTO"
  print "Cadastro Escolar de Aluno"
  print

  for (I = 1; I <= 8; I++) {
    print "Aluno: " I
    print

    printf "Nome ..............: "
    getline ALUNO[I]["NOME"] < "-"

    printf "Turma .............: "
    getline ALUNO[I]["TURMA"] < "-"

    printf "Sala ..............: "
    getline ALUNO[I]["SALA"] < "-"
    print

    for (J = 1; J <= 4; J++) {
      printf "Entre a " J "a. nota ..: "
      getline ALUNO[I]["NOTAS"][J] < "-"
    }

    print
  }

  print "Escola de Computacao XPTO"
  print "Cadastro Escolar de Aluno"
  print
  print "DADOS DOS ALUNOS"
  printf "Aluno "
  printf "Nome                           "
  printf "Sala "
  printf "Turma "
  printf "Nota1 "
  printf "Nota2 "
  printf "Nota3 "
  printf "Nota4 "
  print
  printf "----- "
  printf "------------------------------ "
  printf "---- "
  printf "----- "
  printf "----- "
  printf "----- "
  printf "----- "
  printf "----- "
  print

  for (I = 1; I <= 8; I++) {
    printf "%5d ", I
    printf "%-30s ", ALUNO[I]["NOME"]
    printf "%4d ", ALUNO[I]["SALA"]
    printf "%5s ", ALUNO[I]["TURMA"]
    for (J = 1; J <= 4; J++) {
      printf "%5.1f ", ALUNO[I]["NOTAS"][J]
    }
    print
  }

  print
  printf "Tecle <Enter> para encerrar... "
  getline < "-"
 
}
