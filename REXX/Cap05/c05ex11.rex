/* c05ex11.rex */

do I = 1 to 5 by 1
  call charout, "Entre um valor numerico: "
  pull N

  R = N * 3

  say "Resultado = " || R
  say
end

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit
