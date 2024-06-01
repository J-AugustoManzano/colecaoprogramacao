'c04ex01.bas

Dim A As Integer
Dim B As Integer
Dim X As Integer

Input "Entre o 1o. valor numerico inteiro: ", A
Input "Entre o 2o. valor numerico inteiro: ", B

X = A + B

If (X > 10) Then
    Print "Resultado = "; X
End If

Print 
Print "Tecle <Enter> para encerrar... ";
Getkey
