# c04ex09.awk 

BEGIN {

  print "Classificação esportiva:"
  print ""
  print "Entre '1' se o atleta pontuou na 1a. prova."
  print "Entre '1' se o atleta pontuou na 2a. prova."
  print "Qualquer outro valor se não pontuou."
  print ""

  printf "Prova 1: "
  getline P1 < "-"
  printf "Prova 2: "
  getline P2 < "-"

  print ""

  if ((P1 == 1 && !(P2 == 1)) || (!(P1 == 1) && P2 == 1)) {
    printf "Atleta participa da terceira prova.\n"
  } else {
    printf "Atleta nao participa da terceira prova.\n"
    if (P1 == 1 && P2 == 1) {
      printf "Classificado para a final.\n"
    } else {
      printf "Desclassificado da competicao.\n"
    }
  }

  print ""
  printf "Tecle <Enter> para encerrar... "
  getline < "-"
    
}
