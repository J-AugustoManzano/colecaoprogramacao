' c07ex06.bas

Function FATORIAL(N As Integer) As Integer
    Dim FAT As Integer, I As Integer
    FAT = 1
    For I = 1 To N
        FAT = FAT * I
    Next
    FATORIAL = FAT
End Function

Dim LIMITE As Integer

Input "Qual fatorial: ", LIMITE

Print "Fatorial = "; FATORIAL(LIMITE)

Print
Print "Tecle <Enter> para encerrar... ";
Getkey
