' c08ex07.vb

Imports System
Imports System.Console

Module Program
    Const LIMITE As Integer = 10
    Dim MATRIZ(LIMITE) As Integer
    Dim TOPO As Integer = 0

    Function Vazia() As Boolean
        If (TOPO = 0) Then
            Return True
        Else
            Return False
        End If
    End Function

    Function Cheia() As Boolean
        If (TOPO = LIMITE) Then
            Return True
        Else
            Return False
        End If
    End Function

    Function Adicionar(ByVal ELEMENTO As Integer) As Boolean
        If (Cheia()) Then
            Return False
        Else
            MATRIZ(TOPO) = ELEMENTO
            TOPO += 1
            Return True
        End If
    End Function

    Function Retirar(ByRef ELEMENTO As Integer) As Boolean
        If (Vazia()) Then
            Return False
        Else
            TOPO -= 1
            ELEMENTO = MATRIZ(TOPO)
            MATRIZ(TOPO) = 0
            Return True
        End If
    End Function

    Sub Empilhar()
        Dim X As Integer
        Write("Entre com um elemento numerico: ")
        X = Convert.ToInt32(ReadLine())
        WriteLine()
        If (Adicionar(X)) Then
            WriteLine("Elemento " & X & " inserido na posicao " & TOPO)
        Else
            WriteLine("Impossivel adicionar " & X & " - pilha cheia.")
        End If
        WriteLine()
    End Sub

    Sub Desempilhar()
        Dim ELEMENTO As Integer
        If (Retirar(ELEMENTO)) Then
            Write("Elemento " & ELEMENTO)
            WriteLine(" retirado do topo da pilha.")
        Else
            WriteLine("Impossivel retirar - pilha vazia.")
        End If
        WriteLine()
    End Sub

    Sub Mostrar()
        If (Not Vazia()) Then
            For I As Integer = TOPO - 1 To 0 Step -1
                WriteLine("Posicao: {0,2} = {1}", I + 1, MATRIZ(I))
            Next
        Else
            WriteLine("Impossivel apresentar - pilha vazia.")
        End If
        WriteLine()
    End Sub

    Sub Criar()
        TOPO = 0
        For I As Integer = 0 To LIMITE - 1
            MATRIZ(I) = 0
        Next
    End Sub

    Sub Main(args As String())
        Criar()
        Dim Opcao As Integer = 0
        While (Opcao <> 5)
            WriteLine("PROGRAMA: PILHA")
            WriteLine()
            WriteLine("[1] - Empilhar")
            WriteLine("[2] - Desempilhar")
            WriteLine("[3] - Mostrar")
            WriteLine("[4] - Criar pilha")
            WriteLine("[5] - Sair")
            WriteLine()
            Write("Escolha uma opcao: ")
            Opcao = Integer.Parse(ReadLine())
            WriteLine()
            If (Opcao <> 5) Then
                Select Case (Opcao)
                    Case 1: Empilhar()
                    Case 2: Desempilhar()
                    Case 3: Mostrar()
                    Case 4: Criar()
                    Case Else: WriteLine("Opcao invalida. Tente novamente.")
                End Select
            End If
        End While
    End Sub
End Module
