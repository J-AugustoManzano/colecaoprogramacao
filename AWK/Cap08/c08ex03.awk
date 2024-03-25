# c08ex03.awk

BEGIN {

  print "CLASSIFICACAO DE NUMEROS (CRESCENTE)"
  print ""
  
  for (I = 1; I <= 5; I++) {
    printf "Entre o %do. numero: ", I
    getline NUMEROS[I] < "/dev/tty"
  }
  
  for (I = 1; I <= 4; I++) {
    for (J = I + 1; J <= 5; J++) {
      if (NUMEROS[I] > NUMEROS[J]) {
        X = NUMEROS[I]
        NUMEROS[I] = NUMEROS[J]
        NUMEROS[J] = X
      }
    }
  }
  
  print ""
  for (I = 1; I <= 5; I++) {
    print I "o. numero: " NUMEROS[I]
  }
  
  print ""
  printf "Tecle <Enter> para encerrar... "
  getline < "/dev/tty"
  
}
