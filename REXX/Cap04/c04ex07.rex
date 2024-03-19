/* c04ex07.rex */

call charout, "Entre um numero inteiro: "
pull Numero

if (trunc(Numero) >= 20) & (trunc(Numero) <= 90) then
  say "O nnmero esta na faixa de 20 a 90."
else
  say "O nnmero esta fora da faixa de 20 a 90."

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit
