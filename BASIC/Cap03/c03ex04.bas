'c03ex04.bas

Dim HT As Single, VH As Single, PD As Single
Dim SB As Single, TD As Single, SL As Single

Input "Entre quantidade de horas trabalhadas ..: ", HT
Input "Entre valor do salario-hora ............: ", VH 
Input "Entre valor do percentual de desconto ..: ", PD

SB = HT * VH
TD = (PD / 100) * SB
SL = SB - TD

Print
Print Using "Salario Bruto ....: ###,###.##"; SB
Print Using "Salario Liquido ..: ###,###.##"; SL

Print
Print "Tecle <Enter> para encerrar... ";
GetKey
