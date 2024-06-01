'c08ex06.bas

Const FIM As Integer = 10
Dim Shared MATRIZ(1 To FIM) As Integer
Dim Shared INICIO As Integer

Function Vazia() As Boolean
    If (INICIO = 0) Then
        Vazia = True
    Else
        Vazia = False
    End If
End Function

Function Cheia() As Boolean
    If (INICIO = FIM) Then
        Cheia = True
    Else
        Cheia = False
    End If
End Function

Function Adicionar(Byval ELEMENTO As Integer) As Boolean
    If (Cheia) Then
        Adicionar = False
    Else
        INICIO = INICIO + 1
        MATRIZ(INICIO) = ELEMENTO
        Adicionar = True
    End If
End Function

Function Retirar(Byref ELEMENTO As Integer) As Boolean
    Dim I As Integer
    If (Vazia) Then
        Retirar = False
    Else
        ELEMENTO = MATRIZ(1)
        For I = 1 To INICIO - 1
            MATRIZ(I) = MATRIZ(I + 1)
        Next I
        INICIO = INICIO - 1
        Retirar = True
    End If
End Function

Sub Entrada()
    Dim X As Integer
    Input "Entre com um elemento numerico: ", X
    Print
    If (Adicionar(X)) Then
        Print "Elemento " & X & " inserido na posicao " & INICIO & "."
    Else
        Print "Impossivel adicionar " & X & " - fila lotada."
    End If
    Print
End Sub

Sub Saida()
    Dim ELEMENTO As Integer
    If (Retirar(ELEMENTO)) Then
        Print "Elemento " & ELEMENTO & " retirado do inicio da fila."
    Else
        Print "Impossivel retirar elemento - fila vazia."
    End If
    Print
End Sub

Sub Atual()
    If (Not Vazia) Then
        Print MATRIZ(1) & " - primeiro elemento da fila."
    Else
        Print "Impossivel apresentar - fila vazia."
    End If
    Print
End Sub

Sub Exibicao()
    Dim I As Integer
    If (Not Vazia) Then
        For I = 1 To INICIO
            Print Using "Posicao: ## "; I;
            Print " = "; MATRIZ(I)
        Next I
    Else
        Print "Impossivel apresentar - fila vazia."
    End If
    Print
End Sub

Sub Criar()
    Dim I As Integer
    INICIO = 0
    For I = 1 To FIM
        MATRIZ(I) = 0
    Next I
End Sub

Dim OPCAO As Integer

Criar
OPCAO = 0
While (OPCAO <> 6)
    Print "PROGRAMA: FILA"
    Print
    Print "[1] - Entrada"
    Print "[2] - Saida"
    Print "[3] - Apresentar 1o. da fila"
    Print "[4] - Apresentar a fila"
    Print "[5] - Nova fila"
    Print "[6] - Sair"
    Print
    Input "Escolha uma opcao: ", OPCAO
    Print
    If (OPCAO <> 6) Then
        Select Case OPCAO
            Case 1: Entrada
            Case 2: Saida
            Case 3: Atual
            Case 4: Exibicao
            Case 5: Criar
            Case Else
                Print "Opcao invalida. Tente novamente."
                Print
        End Select
    End If
Wend
