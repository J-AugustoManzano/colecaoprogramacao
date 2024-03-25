# c03ex07.awk 

BEGIN {

  FRASE = "Aprendendo AWK com o Professor Manzano"

  print "Frase .....: " FRASE
  print "             " copie("-", 38)
  print "             00000000011111111112222222222333333333"
  print "             12345678901234567890123456789012345678"

  print ""
  print "Tamanho ...: " length(FRASE) " caracteres"

  split(FRASE, PALAVRA)

  print ""
  print "Palavra 2 .............: " PALAVRA[2]
  print "Palavra 3 .............: " PALAVRA[3]
  print "Palavra 4 .............: " PALAVRA[4]

  print ""
  print "Letra 1 da Palavra 1 ..: " substr(PALAVRA[1], 1, 1)
  print "Letra 2 da Palavra 1 ..: " substr(PALAVRA[1], 2, 1)
  print "Letra 3 da Palavra 1 ..: " substr(PALAVRA[1], 3, 1)
  print "Letra 4 da Palavra 1 ..: " substr(PALAVRA[1], 4, 1)

  print ""
  print "A palavra 'AWK' na posicao: " index(FRASE, "AWK")   
   
  printf "\n"  # o mesmo que 'print ""'
  printf "Tecle <Enter> para encerrar... "
  getline < "-"      
    
}

function copie(CADEIA, N) {
  RESULTADO = ""
  for (I = 1; I <= N; I++) {
    RESULTADO = RESULTADO CADEIA
  }
  return RESULTADO
}
