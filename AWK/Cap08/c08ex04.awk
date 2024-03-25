# c08ex04.awk

BEGIN {

  print "CLASSIFICACAO DE NOMES (DECRESCENTE)"
  print ""
  
  for (I = 1; I <= 5; I++) {
    printf "Entre o %do. nome: ", I
    getline NOMES[I] < "/dev/tty"
  }
  
  for (I = 1; I <= 4; I++) {
    for (J = I + 1; J <= 5; J++) {
      if (NOMES[I] < NOMES[J]) {
        X = NOMES[I]
        NOMES[I] = NOMES[J]
        NOMES[J] = X
      }
    }
  }
  
  print ""
  for (I = 1; I <= 5; I++) {
    print I "o. nome: " NOMES[I]
  }
  
  print ""
  printf "Tecle <Enter> para encerrar... "
  getline < "/dev/tty"
  
}
