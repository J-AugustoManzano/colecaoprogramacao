' c07ex03.bas

Dim Shared A As Integer, B As Integer

Sub TROCA()
    Dim X As Integer
    X = A
    A = B
    B = X
End Sub

Input "Entre um valor para a variavel <A>: ", A
Input "Entre um valor para a variavel <B>: ", B

TROCA()

Print
Print "Variavel <A> com valor "; A
Print "Variavel <B> com valor "; B

Print
Print "Tecle <Enter> para encerrar... ";
Getkey
