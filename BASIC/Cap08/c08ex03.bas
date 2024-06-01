'c08ex03.bas

Dim NOME(1 to 10) As String
Dim RESP As String, PESQ As String, RESPOSTA As String
Dim I As Integer
Dim ACHA As Boolean

Print "PESQUISA SEQUENCIAL DE NOMES"
Print

For I = 1 To 10
    Print Using "Entre o ##o. nome: "; I;
    Input "", NOME(I)
Next I

RESP = "SIM"
While (RESP = "SIM")
    Print
    Print "Entre o nome a ser pesquisado: ";
    Input "", PESQ
    I = 1
    ACHA = False

    While (I <= 10 And ACHA = False)
        If (PESQ = NOME(I)) Then
            ACHA = True
        Else
            I = I + 1
        End If
    Wend

    If (ACHA = True) Then
        Print
        Print PESQ & " foi localizado na posicao " & I
    Else
        Print
        Print PESQ & " nao foi localizado"
    End If

    Print
    Do
        Print "Deseja continuar? (SIM/NAO): ";
        Input "", RESPOSTA
        RESP = UCase$(RESPOSTA)
        If (RESP <> "SIM" And RESP <> "NAO") Then
            Print "Informe apenas SIM ou NAO."
            Print
        End If
    Loop Until (RESP = "SIM" Or RESP = "NAO")
Wend

Print
Print "Tecle <Enter> para encerrar... ";
Getkey
