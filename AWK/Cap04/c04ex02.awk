# c04ex02.awk 

BEGIN {

  printf "Entre o 1o. valor numerico: "
  getline A < "-"

  printf "Entre o 2o. valor numerico: "
  getline B < "-"

    if (A > B) {
      X = A
      A = B
      B = X
    }

  print "Os valores sao: " A " e " B "."
  
  print ""
  printf "Tecle <Enter> para encerrar... "
  getline < "-"

}
