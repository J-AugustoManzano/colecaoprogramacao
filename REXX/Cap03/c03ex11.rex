/* c03ex11.rex */

/*
 * Programa exemplo para operações de duas entradas
 * com caçlulo de adição e apresentação de resultado.
 */

say "ADICAO DE NUMEROS"
say

-- Entrada de dados

call charout, "Entre o 1o. valor numerico inteiro: "
parse pull A -- Entrada variável "A"

call charout, "Entre o 2o. valor numerico inteiro: "
parse pull B -- Entrada variável "B"

-- Processamento de dados

X = A + B /* Cálculo da adição */

-- Saída de dado

say "Resultado da adicao = " X

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit
