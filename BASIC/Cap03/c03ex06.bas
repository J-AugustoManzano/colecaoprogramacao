'c03ex06.bas

Function Inverter(Palavra As String) As String
    Dim i As Integer
    Dim Reverso As String
    For i = Len(Palavra) To 1 Step -1
        Reverso = Reverso + Mid$(Palavra, i, 1)
    Next i
    Inverter = Reverso
End Function

Dim Palavra As String

Palavra = "COMPUTADOR"

Print "Palavra ........: "; Palavra
Print
Print "Lado esquerdo ..: "; Left$(Palavra, 3)
Print "Centro .........: "; Mid$(Palavra, 4, 4)
Print "Lado direito ...: "; Right$(Palavra, 3)
Print "Reverso ........: "; Inverter(Palavra)
Print "Copias .........: "; Palavra + Palavra + Palavra
Print "Tira pedaco ....: "; Left$(Palavra, Len(Palavra) - 3)
Print "Nova palavra ...: "; Left$(Palavra, 6) + "O" + Right$(Palavra, 3)

Print
Print "Tecle <Enter> para encerrar... ";
Getkey
