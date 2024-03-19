/* c04ex09.rex */

say "Classificação esportiva:"
say
say "Entre '1' se atleta pontuou na 1a. prova."
say "Entre '1' se atleta pontuou na 2a. prova."
say "Qualquer outro valor se nao pontuou."
say
call charout, "Prova 1: "
pull P1
call charout, "Prova 2: "
pull P2
say

if (P1 == 1) && (P2 == 1) then
  say "Atleta participa da terceira prova."
else
  do
    say "Atleta nao participa da terceira prova."
    if (P1 == 1) & (P2 == 1) then
      say "Classificado para a final."
    else
      say "Desclassificado da competicao."
  end

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit
