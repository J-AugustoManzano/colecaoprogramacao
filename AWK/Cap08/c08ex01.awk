# c08ex01.awk 

BEGIN {

  while (1) {
    printf "Entre um valor numerico inteiro: "
    getline NUMERO < "-"
    print ""
    
    if (NUMERO != "") {
      if (caractereEspecial(NUMERO)) {
        print "Erro: Caractere especial nao permitido."
        print ""
      } else if (validaInteiro(NUMERO)) {
        break
      } else {
        print "Erro: Entre numero inteiro."
        print ""
      }
    } else {
      print "Erro: Tecla <Enter> acionada acidentalmente."
      print ""
    }
  }
  
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
  return ENTRADA ~ /^[+-]?[0-9]+$/
}
