' c05ex01.bas

Dim I As Integer, N As Integer, R As Integer

I = 1
Do While (I <= 5)
    Input "Entre um valor numerico: ", N
    R = N * 3
    Print "Resultado = "; R
    Print
    I = I + 1
Loop

Print 
Print "Tecle <Enter> para encerrar... ";
Getkey
