' c05ex08.bas

Dim RESP As String, N As Integer, R As Integer

RESP = "S"
Do 
    Input "Entre um valor numerico: ", N
    R = N * 3
    Print "Resultado = "; R
    Print
    Input "Deseja continuar? (S/N): ", RESP
    Print
Loop While (UCase$(RESP) = "S")

Print 
Print "Tecle <Enter> para encerrar... ";
Getkey
