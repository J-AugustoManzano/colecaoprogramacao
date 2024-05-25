# c03ex08.raku 

# Programa exemplo para operações de duas entradas   #
# com cálculo de adição e apresentação de resultado. #

say "ADICAO DE NUMEROS\n";

# Entrada de dados

printf "Entre o 1o. valor numerico: ";
my $A = prompt();
    
printf "Entre o 2o. valor numerico: ";
my $B = prompt();
  
# Processamento de dados
    
my $X = $A + $B; # Cálculo da adição
  
# Saída de dados
    
printf "Resultado = %d\n\n", $X;
   
print "Tecle <Enter> para encerrar... ";
prompt();
