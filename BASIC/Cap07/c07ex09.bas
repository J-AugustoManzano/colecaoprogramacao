' c07ex09.bas

Function FATORIAL_BASE(N As Integer, P As Integer) As Integer
    Dim FB As Integer
    FB = 1
    If (N = 0) Then
        FB = P
    Else
        FB = FATORIAL_BASE(N - 1, N * P)
    End If
    FATORIAL_BASE = FB
End Function

Function FATORIAL(N As Integer) As Integer
    FATORIAL = FATORIAL_BASE(N, 1)
End Function

Dim LIMITE As Integer

Input "Qual fatorial: ", LIMITE

Print "Fatorial = "; FATORIAL(LIMITE)

Print
Print "Tecle <Enter> para encerrar... ";
Getkey
