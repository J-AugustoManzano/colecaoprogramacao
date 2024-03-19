/* c05ex09.rex */

I = 1
do forever

  call charout, "Entre um valor numerico: "
  pull N

  R = N * 3

  say "Resultado = " || R
  say

  if (I > 4) then leave
  I = I + 1
end

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit
