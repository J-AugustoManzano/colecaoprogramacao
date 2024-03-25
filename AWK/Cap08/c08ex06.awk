# c08ex06.awk

BEGIN {

  print "PESQUISA BINARIA DE NUMEROS"
  print ""
  
  for (I = 1; I <= 10; I++) {
    printf "Entre o %2do. numero: ", I
    getline NUMERO[I] < "/dev/tty"
  }
  
  for (I = 1; I <= 9; I++) {
    for (J = I + 1; J <= 10; J++) {
      if (NUMERO[I] > NUMERO[J]) {
        X = NUMERO[I]
        NUMERO[I] = NUMERO[J]
        NUMERO[J] = X
      }
    }
  }
  
  RESP = "SIM"
  while (RESP == "SIM") {
    print ""
    printf "Entre o numero a ser pesquisado: "
    getline PESQ < "/dev/tty"
    
    COMECO = 1
    FINAL = 10
    ACHA = 0
    while (COMECO <= FINAL && ACHA == 0) {
      MEIO = int((COMECO + FINAL) / 2)
      if (PESQ == NUMERO[MEIO]) {
        ACHA = 1
      } else {
        if (PESQ < NUMERO[MEIO]) {
          FINAL = MEIO - 1
        } else {
          COMECO = MEIO + 1
        }
      }
    }
    
    if (ACHA == 1) {
      print ""
      print PESQ " foi localizado na posicao " MEIO
    } else {
      print ""
      print PESQ " nao foi localizado"
    }
    
    print ""
    do {
      printf "Deseja continuar? (SIM/NAO): "
      getline RESPOSTA < "/dev/tty"
      RESP = toupper(RESPOSTA)
      if (RESP == "SIM" || RESP == "NAO") {
        break
      } else {
        print "Informe apenas SIM ou NAO."
        print ""
      }
    } while (1)
  }
  
  print ""
  printf "Tecle <Enter> para encerrar... "
  getline < "/dev/tty"
  
}
