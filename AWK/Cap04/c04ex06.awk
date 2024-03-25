# c04ex06.awk 

BEGIN {

  printf "Entre o 1o. valor numerico: "
  getline A < "-"

  printf "Entre o 2o. valor numerico: "
  getline B < "-"

  print ""
  print "Escolha uma OPCAO de menu:"
  print ""
  print "[1] - Adicao"
  print "[2] - Subtracao"
  print "[3] - Multiplicacao"
  print "[4] - Divisao"
  print ""

  printf "==> "
  getline OPCAO < "-"

  print ""

  if (OPCAO == 1) {
    print "Calculo de adicao"
    print "Resultado: " (A + B)
    goto fim
  } else if (OPCAO == 2) {
    print "Calculo de subtracao"
    print "Resultado: " (A - B)
    goto fim
  } else if (OPCAO == 3) {
    print "Calculo de multiplicacao"
    print "Resultado: " (A * B)
    goto fim
  } else if (OPCAO == 4) {
    print "Calculo de divisao"
    if (B == 0) {
      print "Resultado: ERRO"
    } else {
      print "Resultado: " (A / B)
     }
    goto fim
  } else {
      print "Entrada invalida"
      print "Tente novamente em outro momento"
      goto fim
  }
  fim
    
  print ""

  printf "Tecle <Enter> para encerrar... "
  getline < "-"
 
}
