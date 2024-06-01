'c08ex04.bas

Dim NUMERO(1 to 10) As Integer
Dim I As Integer, J As Integer, X As Integer, PESQ As Integer
Dim COMECO As Integer, FINAL As Integer, MEIO As Integer
Dim ACHA As Boolean
Dim RESP As String, RESPOSTA As String

Print "PESQUISA BINARIA DE NUMEROS"
Print

For I = 1 To 10
    Print Using "Entre o ##o. numero: "; I;
    Input "", NUMERO(I)
Next I

For I = 1 To 9
    For J = I + 1 To 10
        If (NUMERO(I) > NUMERO(J)) Then
            X = NUMERO(I)
            NUMERO(I) = NUMERO(J)
            NUMERO(J) = X
        End If
    Next J
Next I

RESP = "SIM"
While (RESP = "SIM")
    Print
    Print "Entre o numero a ser pesquisado: ";
    Input "", PESQ

    COMECO = 1
    FINAL = 10
    ACHA = False

    While (COMECO <= FINAL And ACHA = False)
        MEIO = (COMECO + FINAL) \ 2
        If (PESQ = NUMERO(MEIO)) Then
            ACHA = True
        ElseIf (PESQ < NUMERO(MEIO)) Then
            FINAL = MEIO - 1
        Else
            COMECO = MEIO + 1
        End If
    Wend

    If (ACHA = True) Then
        Print
        Print PESQ & " foi localizado na posicao " & MEIO
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
