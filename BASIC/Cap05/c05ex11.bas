' c05ex11.bas

Dim I As Integer, N As Integer, R As Integer

For I = 1 To 5 Step 1
    Input "Entre um valor numerico: ", N
    R = N * 3
    Print "Resultado = "; R
    Print
Next I

Print 
Print "Tecle <Enter> para encerrar... ";
Getkey
