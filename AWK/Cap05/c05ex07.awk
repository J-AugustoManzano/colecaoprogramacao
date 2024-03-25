# c05ex07.awk 

BEGIN {

  I = 1
  do {
  
    printf "Entre um valor numerico: "
    getline N < "-"

    R = N * 3

    print "Resultado = " R
    print

    I = I + 1
    
  } while (I <= 5)

  print ""
  printf "Tecle <Enter> para encerrar... "
  getline < "-"

}
