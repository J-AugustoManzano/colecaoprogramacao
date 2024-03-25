# c03ex01.awk 

BEGIN {

  printf "Entre o 1o. valor numerico inteiro: "
  getline A < "-"
    
  printf "Entre o 2o. valor numerico inteiro: "
  getline B < "-"
    
  X = int(A) + int(B)
    
  printf "Resultado = %i\n\n", X
    
  printf "Tecle <Enter> para encerrar... "
  getline < "-"
    
}
