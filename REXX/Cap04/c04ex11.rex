/* c04ex11.rex */

call charout, "Entre um numero inteiro: "
pull N

R4 = trunc(N) // 4
R5 = trunc(N) // 5

if (R4 == 0) & (R5 == 0) then
  say "Resultado = " || trunc(N)
else
  say "Valor nao e divisivel por 4 e 5"

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit
