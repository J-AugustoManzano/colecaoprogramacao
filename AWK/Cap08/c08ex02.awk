# c08ex02.awk 

BEGIN {

  do {
    printf "Entre um valor numerico real: "
    getline NUMERO < "-"
    print ""
    
    if (NUMERO != "") {
      if (caractereEspecial(NUMERO)) {
        print "Erro: Caractere especial nao permitido."
        print ""
      } else if (validaInteiro(NUMERO)) {
        break
      } else {
        print "Erro: Entre numero real."
        print ""
      }
    } else {
      print "Erro: Tecla <Enter> acionada acidentalmente."
      print ""
    }
  } while (1)
  
  print "Entrada valida fornecida: " NUMERO
  
  print ""
  printf "Tecle <Enter> para encerrar... "
  getline < "-"

}

function caractereEspecial(ENTRADA) {
  CARACTERE = "!@#$%^&*()-_=+[]{}|;:',<>/?`~\""
  for (i = 1; i <= length(CARACTERE); i++) {
    if (index(ENTRADA, substr(CARACTERE, i, 1)) > 0) {
      return 1
    }
  }
  return 0
}

function validaInteiro(ENTRADA) {
  return ENTRADA ~ /^[+-]?([0-9]+([.][0-9]*)?|[.][0-9]+)$/
}
