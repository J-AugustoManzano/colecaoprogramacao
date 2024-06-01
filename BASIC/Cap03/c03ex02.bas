'c03ex02.bas

Const PI As Single = 4 * Atn(1)

Dim R As Single, A As Single

Input "Entre valor do raio: ", R

A = PI * R ^ 2

Print Using "Resultado = ###.##"; A

Print 
Print "Tecle <Enter> para encerrar... ";
Getkey
