# c05ex08.awk 

BEGIN {

  RESP = "S"
  do {
  
    printf "Entre um valor numerico: "
    getline N < "-"

    R = N * 3

    print "Resultado = " R
    print

    printf "Deseja continuar? (S/N): "
    getline RESP

    print
    
  } while (toupper(RESP) == "S") 

  print ""
  printf "Tecle <Enter> para encerrar... "
  getline < "-"

}
