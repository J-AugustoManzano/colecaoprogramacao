/* c06ex01.rex */

Soma = 0

do I = 1 to 8
  call charout, "Entre a media do aluno " || I || ": "
  pull MD.I
  Soma = Soma + MD.I
end

Media = Soma / 8

say
say "Media geral: " || right(format(Media, , 2), 5)

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit
