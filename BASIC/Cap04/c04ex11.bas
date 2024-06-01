' c04ex11.bas

Dim N As Integer, R4 As Integer, R5 As Integer

Input "Entre um numero inteiro: ", N

R4 = N Mod 4
R5 = N Mod 5

If (R4 = 0 And R5 = 0) Then
    Print "Resultado = "; N
Else
    Print "Valor nao e divisivel por 4 e 5"
End If

Print
Print "Tecle <Enter> para encerrar... ";
Getkey
