'c08ex01.bas

Dim Numeros(1 to 5) As Integer
Dim I as integer, J As Integer, X As Integer  

Print "CLASSIFICACAO DE NUMEROS (CRESCENTE)"
Print

For I = 1 To 5 Step 1
    Print "Entre o " & I & "o. numero: ";
    Input "", Numeros(I)
Next I

For I = 1 To 4 Step 1
    For J = I + 1 To 5 Step 1
        If (Numeros(I) > Numeros(J)) then
            X = Numeros(I)
            Numeros(I) = Numeros(J)
            Numeros(J) = X
        End If
    Next J
Next I

Print
For I = 1 To 5 Step 1
    Print I & "o. numero: "; Numeros(I)
Next I

Print
Print "Tecle <Enter> para encerrar... ";
Getkey
