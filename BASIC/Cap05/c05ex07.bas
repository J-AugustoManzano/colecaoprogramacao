' c05ex07.bas

Dim I As Integer, N As Integer, R As Integer

I = 1
Do 
    Input "Entre um valor numerico: ", N
    R = N * 3
    Print "Resultado = "; R
    Print
    I = I + 1
Loop While (I <= 5)

Print 
Print "Tecle <Enter> para encerrar... ";
Getkey
