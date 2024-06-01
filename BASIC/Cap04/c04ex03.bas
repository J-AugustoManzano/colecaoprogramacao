' c04ex03.bas

Dim A As Integer, B As Integer, X As Integer, R As Integer

Input "Entre o 1o. valor numerico: ", A
Input "Entre o 2o. valor numerico: ", B

X = A + B

If (X >= 10) Then
    R = X + 5
Else
    R = X - 7
End If

Print "Resultado = "; R
Print
Print "Tecle <Enter> para encerrar... ";
Getkey
