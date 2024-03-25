# c06ex02.awk 

BEGIN {

  for (I = 1; I <= 8; I++) {
    print "Entre as notas do aluno " I ":"
    for (J = 1; J <= 4; J++) {
      printf "Nota ==> " J ": "
      getline NOTAS[I][J] < "-"
    }
    print
  }

  print
  print "RELATORIO DE NOTAS"
  print
  print "Aluno Nota1 Nota2 Nota3 Nota4"
  print "----- ----- ----- ----- -----"
  for (I = 1; I <= 8; I++) {
    printf "%5d ", I
    for (J = 1; J <= 4; J++) {
      printf "%5.1f ", NOTAS[I][J]
    }
    print
  }

  print
  printf "Tecle <Enter> para encerrar... "
  getline < "-"
 
}
