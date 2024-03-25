# c05ex03.awk 

BEGIN {

  I = 1
  while (! (I > 5)) {
  
    printf "Entre um valor numerico: "
    getline N < "-"

    R = N * 3

    print "Resultado = " R
    print

    I = I + 1
    
  }

  print ""
  printf "Tecle <Enter> para encerrar... "
  getline < "-"

}
