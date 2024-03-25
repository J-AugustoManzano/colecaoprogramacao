# c04ex10.awk 

BEGIN {

  printf "Entre um numero inteiro: "
  getline N < "-"

  R4 = int(N) % 4
  R5 = int(N) % 5

  if (R4 == 0 && R5 == 0) {
    print "Resultado = " int(N)
  } else {
    print "Valor nao e divisivel por 4 e 5"
  }

  print ""
  printf "Tecle <Enter> para encerrar... "
  getline < "-"
 
}
