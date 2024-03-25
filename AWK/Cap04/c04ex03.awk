# c04ex03.awk 

BEGIN {

  printf "Entre o 1o. valor numerico: "
  getline A < "-"

  printf "Entre o 2o. valor numerico: "
  getline B < "-"

  X = A + B

  if (X >= 10) {
    R = X + 5
  } else {
    R = X - 7
  }

  print "Resultado = " R
  
  print ""
  printf "Tecle <Enter> para encerrar... "
  getline < "-"

}
