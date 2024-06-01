' c04ex06.bas

Dim A As Double, B As Double, Opcao As Double

Input "Entre o 1o. valor numerico: ", A
Input "Entre o 2o. valor numerico: ", B

Print
Print "Escolha uma opcao de menu:"
Print
Print "[1] - Adicao"
Print "[2] - Subtracao" 
Print "[3] - Multiplicacao"
Print "[4] - Divisao"
Print

Input "==> ", Opcao
Print

Select Case (Opcao)
    Case 1
        Print "Calculo de adicao"
        Print Using "Resultado: #####.##"; (A + B)
    Case 2
        Print "Calculo de subtracao"
        Print Using "Resultado: #####.##"; (A - B)
    Case 3
        Print "Calculo de multiplicacao"
        Print Using "Resultado: #####.##"; (A * B)
    Case 4
        Print "Calculo de divisao"
        If (B = 0) Then
            Print "Resultado: ERRO"
        Else
            Print Using "Resultado: #####.##"; (A / B)
        End If
    Case Else
        Print "Entrada invalida"
        Print "Tente novamente em outro momento"
End Select

Print
Print "Tecle <Enter> para encerrar... ";
Getkey
