# c03ex08.pl 

#!/usr/bin/perl

# Programa exemplo para operações de duas entradas
# com cálculo de adição e apresentação de resultado.

BEGIN {

  print "ADICAO DE NUMEROS";
  print;
  
  # Entrada de dados
  
  printf "Entre o 1o. valor numerico: ";
  $A = <STDIN>;
  chomp($A);
    
  printf "Entre o 2o. valor numerico: ";
  $B = <STDIN>;
  chomp($B);
  
  # Processamento de dados
    
  $X = $A + $B; # Cálculo da adição
  
  # Saída de dados
    
  printf "Resultado = %i\n\n", $X;
    
  printf "Tecle <Enter> para encerrar... ";
  <STDIN>;
    
}
