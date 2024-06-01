' c04ex07.bas

Dim Numero As Integer

Input "Entre um numero inteiro: ", Numero

If (Numero >= 20 And Numero <= 90) Then
    Print "O numero esta na faixa de 20 a 90."
Else
    Print "O numero esta fora da faixa de 20 a 90."
End If

Print
Print "Tecle <Enter> para encerrar... ";
Getkey
