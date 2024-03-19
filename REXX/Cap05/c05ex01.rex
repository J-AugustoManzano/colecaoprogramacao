/* c05ex01.rex */

I = 1
do while (I <= 5)

  call charout, "Entre um valor numerico: "
  pull N

  R = N * 3

  say "Resultado = " || R
  say

  I = I + 1
end

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit
