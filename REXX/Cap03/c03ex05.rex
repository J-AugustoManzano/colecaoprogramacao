/* c03ex05.rex */

call charout, "Entre quantidade de horas trabalhadas ..: "
pull HT

call charout, "Entre valor do salario-hora ............: "
pull VH

call charout, "Entre valor do percentual de desconto ..: "
pull PD

SB = HT * VH
TD = (PD / 100) * SB
SL = SB - TD

say
say "Salario Bruto ....: " right(format(SB, , 2), 8)
say "Salario Liquido ..: " right(format(SL, , 2), 8)

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit
