# c03ex08.awk 

# Programa exemplo para operações de duas entradas   #
# com cálculo de adição e apresentação de resultado. #

BEGIN {

  print "ADICAO DE NUMEROS"
  print
  
  # Entrada de dados
  
  printf "Entre o 1o. valor numerico: "
  getline A < "-"
    
  printf "Entre o 2o. valor numerico: "
  getline B < "-"
  
  # Processamento de dados
    
  X = A + B # Cálculo da adição
  
  # saída de dados
    
  printf "Resultado = %i\n\n", X
    
  printf "Tecle <Enter> para encerrar... "
  getline < "-"
    
}
