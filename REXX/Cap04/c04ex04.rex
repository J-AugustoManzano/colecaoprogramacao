/* c04ex04.rex */

call charout, "Entre a 1a. nota .......: "
pull N1

call charout, "Entre a 2a. nota .......: "
pull N2

call charout, "Entre a 3a. nota .......: "
pull N3

call charout, "Entre a 4a. nota .......: "
pull N4

MD1 = (N1 + N2 + N3 + N4) / 4

if (MD1 >= 7) then 
  do
    say
    say "Aprovado"
    say "Media obtida: " || right(format(MD1, , 2), 5)
  end
else 
  do
    call charout, "Entre a nota de exame ..: "
    pull NE
    MD2 = (MD1 + NE) / 2
    if (MD2 >= 5) then 
      do
        say
        say "Aprovado em exame"
      end
  else 
    do
      say
      say "Reprovado"
    end
    say "Media obtida: " || right(format(MD2, , 2), 5)
  end

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit
