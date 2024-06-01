' c07ex08.bas

Function FATORIAL(N As Integer) As Integer
    Dim FAT As Integer
    FAT = 1
    If (N = 0) Then
        FAT = 1
    Else
        FAT = N * FATORIAL(N - 1)
    End If
    FATORIAL = FAT
End Function

Dim LIMITE As Integer

Input "Qual fatorial: ", LIMITE

Print "Fatorial = "; FATORIAL(LIMITE)

Print
Print "Tecle <Enter> para encerrar... ";
Getkey
