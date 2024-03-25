# c05ex11.awk 

BEGIN {

 for (I = 1; I <= 5; I++)
 {
  
    printf "Entre um valor numerico: "
    getline N < "-"

    R = N * 3

    print "Resultado = " R
    print
    
  } 

  print ""
  printf "Tecle <Enter> para encerrar... "
  getline < "-"

}
