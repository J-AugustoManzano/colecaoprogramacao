'c08ex02.bas

Dim Nomes(1 to 5) As String
Dim X As String
Dim I As integer, J As integer

Print "CLASSIFICACAO DE NOMES (DECRESCENTE)"
Print

For I = 1 To 5
    Print "Entre o " & I & "o. nome: ";
    Input "", Nomes(I)
Next I

For I = 1 To 4
    For J = I + 1 To 5
        If Nomes(I) < Nomes(J) Then
            X = Nomes(I)
            Nomes(I) = Nomes(J)
            Nomes(J) = X
        End If
    Next J
Next I

Print
For I = 1 To 5
    Print I & "o. nome: "; Nomes(I)
Next I

Print 
Print "Tecle <Enter> para encerrar... ";
Getkey
