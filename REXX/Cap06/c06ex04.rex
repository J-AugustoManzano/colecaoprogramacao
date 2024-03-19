/* c06ex04.rex */

call charout, "Entre a quantidade de elementos da matriz: "
pull N
say

do I = 1 to N
  call charout, "Entre o " || format(I, "3") || "o. nome: "
  parse pull A.I
end

say
say "Foram fornecidos os nomes:"
say

do I = 1 to N
  say "Nome " || format(I, "3") || " = " || A.I
end

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit
