' c05ex10.bas

Dim RESP As String, N As Integer, R As Integer

RESP = "S"
Do 
    Input "Entre um valor numerico: ", N
    R = N * 3
    Print "Resultado = "; R
    Print
    Input "Deseja continuar? (S/N): ", RESP
    Print
    If (UCase$(RESP) <> "S") Then
        Exit Do
    End If
Loop

Print 
Print "Tecle <Enter> para encerrar... ";
Getkey
