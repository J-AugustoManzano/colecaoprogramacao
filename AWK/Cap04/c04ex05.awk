# c04ex05.awk 

BEGIN {

  printf "Entre numero equivalente a um mes: "
  getline MES < "-"

  printf "\n"

  if (int(MES) == 1) {
    print "Janeiro"
    goto fim
  } else if (int(MES) ==  2) {
    print "Fevereiro"
    goto fim
  } else if (int(MES) ==  3) {
    print "Marco"
    goto fim
  } else if (int(MES) ==  4) {
    print "Abril"
    goto fim
  } else if (int(MES) ==  5) {
    print "Maio"
    goto fim
  } else if (int(MES) ==  6) {
    print "Junho"
    goto fim
  } else if (int(MES) ==  7) {
    print "Julho"
    goto fim
  } else if (int(MES) ==  8) {
    print "Agosto"
    goto fim
  } else if (int(MES) ==  9) {
    print "Setembro"
    goto fim
  } else if (int(MES) == 10) {
    print "Outubro"
    goto fim
  } else if (int(MES) == 11) {
    print "Novembro"
    goto fim
  } else if (int(MES) == 12) {
    print "Dezembro"
    goto fim
  } else {
    print "Valor invalido"
    goto fim
  }
  fim

  printf "\n"

  printf "Tecle <Enter> para encerrar... "
  getline < "-"

}
