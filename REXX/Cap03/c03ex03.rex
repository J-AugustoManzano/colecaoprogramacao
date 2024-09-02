/* c03ex03.rex */

call RxFuncAdd "MathLoadFuncs", "rxmath"

call charout, "Entre valor do raio: "
pull R

A = RxCalcPi() * R ** 2

say "Resultado = " format(A, , 2)

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit
