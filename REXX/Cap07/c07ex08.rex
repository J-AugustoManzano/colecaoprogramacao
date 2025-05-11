/* c07ex08.rex */

call charout, "Qual fatorial: "
pull Limite

say "Fatorial = " || FATORIAL(Limite)

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit

FATORIAL: procedure
arg N
  if (N == 0) then
    return 1
  else
    return N * FATORIAL(N - 1)
