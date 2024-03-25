# c05ex02.awk 

BEGIN {

  RESP = "S"
  while (toupper(RESP) == "S") {
    printf "Entre um valor numerico: "
    getline N < "-"

    R = N * 3

    print "Resultado = " R
    print

    printf "Deseja continuar? (S/N): "
    getline RESP

    print
  }

  print ""
  printf "Tecle <Enter> para encerrar... "
  getline < "-"

}
