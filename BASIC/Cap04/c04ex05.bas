' c04ex05.bas

Dim Mes As Integer

Input "Digite um numero equivalente a um mes: ", Mes
Print

Select Case (Mes)
    Case 1
        Print "Janeiro"
    Case 2
        Print "Fevereiro"
    Case 3
        Print "Março"
    Case 4
        Print "Abril"
    Case 5
        Print "Maio"
    Case 6
        Print "Junho"
    Case 7
        Print "Julho"
    Case 8
        Print "Agosto"
    Case 9
        Print "Setembro"
    Case 10
        Print "Outubro"
    Case 11
        Print "Novembro"
    Case 12
        Print "Dezembro"
    Case Else
        Print "Mes invalido"
End Select

Print
Print "Tecle <Enter> para encerrar... ";
Getkey
