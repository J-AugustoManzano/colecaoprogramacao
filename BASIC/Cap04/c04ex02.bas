' c04ex02.bas

Dim A As Integer
Dim B As Integer
Dim X As Integer

Input "Entre o 1o. valor numerico: ", A
Input "Entre o 2o. valor numerico: ", B

If (A > B) Then
    X = A
    A = B
    B = X
End If

Print "Os valores sao: "; A; " e "; B; "."

Print
Print "Tecle <Enter> para encerrar... ";
Getkey
