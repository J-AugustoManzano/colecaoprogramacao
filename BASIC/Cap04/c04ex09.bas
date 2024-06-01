' c04ex09.bas

Dim P1 As Integer, P2 As Integer

Print "Classificacao esportiva"
Print
Print "Entre '1' se atleta pontuou na 1a. prova"
Print "Entre '1' se atleta pontuou na 2a. prova"
Print "Qualquer outro valor se nao pontuou nas provas"
Print

Input "Prova 1: ", P1
Input "Prova 2: ", P2

If (P1 = 1 Xor P2 = 1) Then
    Print "Atleta participa da terceira prova."
Else
    Print "Atleta nao participa da terceira prova."
    If (P1 = 1 And P2 = 1) Then
        Print "Classificado para a final."
    Else
        Print "Desclassificado da competicao."
    End If
End If

Print
Print "Tecle <Enter> para encerrar... ";
Getkey
