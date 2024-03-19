/* c08ex04.rex */

say "CLASSIFICACAO DE NOMES (DECRESCENTE)"
say

do I = 1 to 5
  call charout, "Entre o " || I || "o. nome: "
  pull NOMES.I
end

do I = 1 to 4
  do J = I + 1 to 5
    if (NOMES.I < NOMES.J) then do
      X = NOMES.I
      NOMES.I = NOMES.J
      NOMES.J = X
    end
  end
end

say
do I = 1 to 5
  say I || "o. nome: " || NOMES.I
end

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit
