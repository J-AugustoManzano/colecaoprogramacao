# c03ex05.awk 

BEGIN {

  printf "Entre seu nome: "
  getline NOME < "-"
    
  printf "Ola, %s! Bem-vindo ao estudo de AWK.\n\n", NOME
   
  printf "Tecle <Enter> para encerrar... "
  getline < "-"
    
}
