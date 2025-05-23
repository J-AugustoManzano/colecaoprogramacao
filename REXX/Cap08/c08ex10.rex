/* c08ex10.rex */

do I = 0 to 14
  say format(I, "2") || " - " || format(FIBONACCI(I), "10")
end     

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit

fibonacciBase: procedure
  arg N, X, Y
  if (N == 0) then return X
  if (N == 1) then return Y
  if (N >= 2) then return fibonacciBase(N - 1, Y, X + Y)

FIBONACCI: procedure
  arg N
  return fibonacciBase(N, 0, 1)
