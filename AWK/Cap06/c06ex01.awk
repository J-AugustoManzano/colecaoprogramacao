# c06ex01.awk 

BEGIN {

  SOMA = 0
  
  for (I = 1; I <= 8; I++) {
  
    printf "Entre a media do aluno " I ": "
    getline MD[I] < "-"

    SOMA = SOMA + MD[I]
    
  }

  MEDIA = SOMA / 8

  print ""
  print "Media geral: " sprintf("%5.2f", MEDIA)

  print ""
  printf "Tecle <Enter> para encerrar... "
  getline < "-"

}
