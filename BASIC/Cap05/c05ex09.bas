' c05ex09.bas

Dim I As Integer, N As Integer, R As Integer

I = 1
Do 
    Input "Entre um valor numerico: ", N
    R = N * 3
    Print "Resultado = "; R
    Print
    If (I > 4) Then
        Exit Do
    End If
    I = I + 1
Loop

Print 
Print "Tecle <Enter> para encerrar... ";
Getkey
