/* c05ex12.rex */

do 5
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
