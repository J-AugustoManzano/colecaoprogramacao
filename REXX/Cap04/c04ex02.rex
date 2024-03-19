/* c04ex02.rex */

call charout, "Entre o 1o. valor numerico: " 
pull A

call charout, "Entre o 2o. valor numerico: " 
pull B

if (A > B) then
  do
    X = A
    A = B
    B = X
  end

say "Os valores sao: " || A || " e " || B || "."

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit
