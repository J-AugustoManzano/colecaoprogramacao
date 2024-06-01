' c07ex02.bas

Dim A As Integer, B As Integer, X As Integer

Input "Entre um valor para a variavel <A>: ", A
Input "Entre um valor para a variavel <B>: ", B

X = A
A = B
B = X

Print
Print "Variavel <A> com valor "; A
Print "Variavel <B> com valor "; B

Print
Print "Tecle <Enter> para encerrar... ";
Getkey
