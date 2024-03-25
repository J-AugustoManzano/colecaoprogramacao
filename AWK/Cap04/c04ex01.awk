# c04ex01.awk 

BEGIN {

  printf "Entre o 1o. valor numerico: "
  getline A < "/dev/tty"

  printf "Entre o 2o. valor numerico: "
  getline B < "/dev/tty"

  X = A + B

  if (X > 10) {
    print "Resultado = " X
  }

  print ""
  printf "Tecle <Enter> para encerrar... "
  getline < "/dev/tty"

}
