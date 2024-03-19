/* c08ex09.rex */

do I = 0 to 14
  say format(I, "2") || " - " || format(FIBONACCI(I), "10")
end     

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit

FIBONACCI: procedure
  arg N
  if (N == 0) then return 0
  if (N == 1) then return 1
  if (N >= 2) then return FIBONACCI(N - 1) + FIBONACCI(N - 2)
