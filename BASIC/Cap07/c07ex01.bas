' c07ex01.bas

Sub ROTSOMA ()
    Dim A1 As Double, B1 As Double, R1 As Double
    
    Print
    Print "Rotina de Adicao"
    Print
    Input "Entre o 1o. valor: ", A1
    Input "Entre o 2o. valor: ", B1
    Print
    R1 = A1 + B1
    Print Using "O resultado da operacao equivale a: ####.##"; R1
    Print
End Sub

Sub ROTSUBTRACAO ()
    Dim A2 As Double, B2 As Double, R2 As Double
    
    Print
    Print "Rotina de Subtracao" 
    Print
    Input "Entre o 1o. valor: ", A2
    Input "Entre o 2o. valor: ", B2
    Print
    R2 = A2 - B2
    Print Using "O resultado da operacao equivale a: ####.##"; R2
    Print
End Sub

Sub ROTMULTIPLICACAO ()
    Dim A3 As Double, B3 As Double, R3 As Double
    
    Print
    Print "Rotina de Multiplicacao"
    Print 
    Input "Entre o 1o. valor: ", A3
    Input "Entre o 2o. valor: ", B3
    Print
    R3 = A3 * B3
    Print Using "O resultado da operacao equivale a: ####.##"; R3
    Print
End Sub

Sub ROTDIVISAO ()
    Dim A4 As Double, B4 As Double, R4 As Double
    
    Print
    Print "Rotina de Divisao"
    Print
    Input "Entre o 1o. valor: ", A4
    Input "Entre o 2o. valor: ", B4
    Print
    If B4 = 0 Then
        Print "O resultado da operacao equivale a: ERRO"
    Else
        R4 = A4 / B4
        Print Using "O resultado da operacao equivale a: ####.##"; R4
    End If
    Print
End Sub

Dim OPCAO As Integer

OPCAO = 0
While (OPCAO <> 5)
    Print "CALCULADORA - V1"
    Print
    Print "[1] - Adicao"
    Print "[2] - Subtracao" 
    Print "[3] - Multiplicacao"
    Print "[4] - Divisao"
    Print "[5] - Fim de Programa"
    Print
    Input "Escolha uma opcao: ", OPCAO
    If (OPCAO <> 5) Then
        Select Case (OPCAO)
            Case 1: ROTSOMA
            Case 2: ROTSUBTRACAO
            Case 3: ROTMULTIPLICACAO
            Case 4: ROTDIVISAO
            Case Else
                Print
                Print "Opcao invalida - Tente novamente"
                Print
        End Select
    End If
Wend
