/* c05ex07.rex */

I = 1
loop

  call charout, "Entre um valor numerico: "
  pull N

  R = N * 3

  say "Resultado = " || R
  say

  I = I + 1
  if \ (I <= 5) then leave
end

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit
