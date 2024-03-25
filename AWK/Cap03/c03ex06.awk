# c03ex06.awk 

BEGIN {

  PALAVRA = "COMPUTADOR"
    
  print "Palavra .......: " PALAVRA
  print ""
  print "Lado esquerdo .: " substr(PALAVRA, 1, 3)
  print "Centro ........: " substr(PALAVRA, 4, 4)
  printf "Lado direito ..: " 
  print substr(PALAVRA, length(PALAVRA) - 2)
  print "Tira pedaco ...: " substr(PALAVRA, 1, 7)
  printf "Nova palavra ..: " 
  print substr(PALAVRA, 1, 6) "O" substr(PALAVRA, 8)
  print "\n"
   
  printf "Tecle <Enter> para encerrar... "
  getline < "-"
    
}
