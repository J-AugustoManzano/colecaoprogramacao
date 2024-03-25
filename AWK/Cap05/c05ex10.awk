# c05ex09.awk 

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
    if (toupper(RESP) != "S") {break}
   
  } while (1)

  print ""
  printf "Tecle <Enter> para encerrar... "
  getline < "-"

}
