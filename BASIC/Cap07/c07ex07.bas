' c07ex07.bas

Function IGUAL(A As Integer, B As Integer) As Boolean
    IGUAL = (A = B)
End Function

Dim X As Integer, Y As Integer

Input "Informe o 1o. valor: ", X
Input "Informe o 2o. valor: ", Y

If (IGUAL(X, Y)) Then
    Print "Valores sao iguais"
Else
    Print "Valores sao diferentes"
End If

Print
Print "Tecle <Enter> para encerrar... ";
Getkey
