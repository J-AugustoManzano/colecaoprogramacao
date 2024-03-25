# c04ex07.awk 

BEGIN {

  printf "Entre um numero inteiro: "
  getline NUMERO < "-"

  if (int(NUMERO) >= 20 && int(NUMERO) <= 90) {
    print "O numero esta na faixa de 20 a 90."
  } else {
    print "O numero esta fora da faixa de 20 a 90."
  }

  print ""
  printf "Tecle <Enter> para encerrar... "
  getline < "-"

}
