/* c08ex03.rex */

say "CLASSIFICACAO DE NUMEROS (CRESCENTE)"
say

do I = 1 to 5
  call charout, "Entre o " || I || "o. numero: "
  pull NUMEROS.I
end

do I = 1 to 4
  do J = I + 1 to 5
    if (NUMEROS.I > NUMEROS.J) then do
      X = NUMEROS.I
      NUMEROS.I = NUMEROS.J
      NUMEROS.J = X
    end
  end
end

say
do I = 1 to 5
  say I || "o. numero: " || NUMEROS.I
end

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit
