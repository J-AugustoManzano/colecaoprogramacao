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
  return FATORIAL_BASE(N, 1)

FATORIAL_BASE: procedure
  arg N, P
  if (N == 0) then
    return P
  else
    return FATORIAL_BASE(N - 1, N * P)
