' c04ex10.bas

Dim A As Integer, B As Integer, X As Integer, C As Integer

Input "Entre valor para a variavel <A>: ", A
Input "Entre valor para a variavel <B>: ", B
Input "Entre valor para a variavel <X>: ", X

If Not (X > 5) Then
    C = A + B
Else
    C = A - B
End If

Print
Print "Resultado = "; C

Print
Print "Tecle <Enter> para encerrar... ";
Getkey
