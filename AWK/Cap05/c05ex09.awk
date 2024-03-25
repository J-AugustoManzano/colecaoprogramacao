# c05ex09.awk 

BEGIN {

  I = 1
  do {
  
    printf "Entre um valor numerico: "
    getline N < "-"

    R = N * 3

    print "Resultado = " R
    print

    if (I > 4) {break}
    I = I + 1
    
  } while (1)

  print ""
  printf "Tecle <Enter> para encerrar... "
  getline < "-"

}
