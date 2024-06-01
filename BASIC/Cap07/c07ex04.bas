' c07ex04.bas

Sub Fatorial(N As Integer)
    Dim I As Integer, Fat As Integer
    Fat = 1
    For I = 1 To N
        Fat = Fat * I
    Next
    Print "Fatorial = "; Fat
End Sub

Dim Limite As Integer

Input "Qual fatorial: ", Limite
Fatorial(Limite)

Print
Print "Tecle <Enter> para encerrar... ";
Getkey
