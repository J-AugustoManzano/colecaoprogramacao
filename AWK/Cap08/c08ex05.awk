# c08ex05.awk

BEGIN {

  print "PESQUISA SEQUENCIAL DE NOMES"
  print ""
  
  for (I = 1; I <= 10; I++) {
    printf "Entre o %2do. nome: ", I
    getline NOME[I] < "/dev/tty"
  }
  
  RESP = "SIM"
  while (RESP == "SIM") {
    print ""
    printf "Entre o nome a ser pesquisado: "
    getline PESQ < "/dev/tty"
    I = 1
    ACHA = 0
    while (I <= 10 && ACHA == 0) {
      if (PESQ == NOME[I]) {
        ACHA = 1
      } else {
        I = I + 1
      }
    }
    
    if (ACHA == 1) {
      print ""
      print PESQ " foi localizado na posicao " I
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
