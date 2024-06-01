'c08ex05.bas

Const LIMITE As Integer = 10
Dim Shared MATRIZ(1 To LIMITE) As Integer
Dim Shared TOPO As Integer

Function Vazia() As Boolean
    If (TOPO = 0) Then
        Vazia = True
    Else
        Vazia = False
    End If
End Function

Function Cheia() As Boolean
    If (TOPO = LIMITE) Then
        Cheia = True
    Else
        Cheia = False
    End If
End Function

Function Adicionar(Byval ELEMENTO As Integer) As Boolean
    If (Cheia) Then
        Adicionar = False
    Else
        TOPO = TOPO + 1
        MATRIZ(TOPO) = ELEMENTO
        Adicionar = True
    End If
End Function

Function Retirar(Byref ELEMENTO As Integer) As Boolean
    If (Vazia) Then
        Retirar = False
    Else
        ELEMENTO = MATRIZ(TOPO)
        MATRIZ(TOPO) = 0
        TOPO = TOPO - 1
        Retirar = True
    End If
End Function

Sub Empilhar()
    Dim X As Integer
    Input "Entre com um elemento numerico: ", X
    Print
    If (Adicionar(X)) Then
        Print "Elemento " & X & " inserido na posicao " & TOPO & "."
    Else
        Print "Impossivel adicionar " & X & " - pilha cheia."
    End If
    Print
End Sub

Sub Desempilhar()
    Dim ELEMENTO As Integer
    If (Retirar(ELEMENTO)) Then
        Print "Elemento " & ELEMENTO & " retirado do topo da pilha."
    Else
        Print "Impossivel retirar elemento - pilha vazia."
    End If
    Print
End Sub

Sub Mostrar()
    Dim I As Integer
    If (Not Vazia) Then
        For I = TOPO To 1 Step -1
            Print Using "Posicao: ## "; I;
            Print " = "; MATRIZ(I)
        Next I
    Else
        Print "Impossivel apresentar - pilha vazia."
    End If
    Print
End Sub

Sub Criar()
    Dim I As Integer
    TOPO = 0
    For I = 1 To LIMITE
        MATRIZ(I) = 0
    Next I
End Sub

Dim Opcao As Integer

Criar
Opcao = 0
While (Opcao <> 5)
    Print "PROGRAMA: PILHA"
    Print
    Print "[1] - Empilhar"
    Print "[2] - Desempilhar"
    Print "[3] - Mostrar"
    Print "[4] - Criar pilha"
    Print "[5] - Sair"
    Print
    Input "Escolha uma opcao: ", Opcao
    Print
    If (Opcao <> 5) Then
        Select Case Opcao
            Case 1: Empilhar
            Case 2: Desempilhar
            Case 3: Mostrar
            Case 4: Criar
            Case Else
                Print "Opcao invalida. Tente novamente."
                Print
        End Select
    End If
Wend
