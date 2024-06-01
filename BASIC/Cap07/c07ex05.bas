' c07ex05.bas

Sub FATORIAL(N As Integer, ByRef FAT As Integer)
    Dim I As Integer
    FAT = 1
    For I = 1 To N
        FAT = FAT * I
    Next
End Sub

Dim RESP As Integer, LIMITE As Integer

RESP = 1

Input "Qual fatorial: ", LIMITE
FATORIAL(LIMITE, RESP)

Print "Fatorial = "; RESP

Print
Print "Tecle <Enter> para encerrar... ";
Getkey
