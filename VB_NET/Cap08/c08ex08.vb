' c08ex08.vb

Imports System
Imports System.Console

Module Program
    Const FIM As Integer = 10
    Dim MATRIZ(FIM) As Integer
    Dim INICIO As Integer = 0

    Function Vazia() As Boolean
        If (INICIO = 0) Then
            Return True
        Else
            Return False
        End If
    End Function

    Function Cheia() As Boolean
        If (INICIO = FIM) Then
            Return True
        Else
            Return False
        End If
    End Function

    Function Adicionar(ByVal ELEMENTO As Integer) As Boolean
        If (Cheia()) Then
            WriteLine("Impossivel adicionar - fila lotada.")
            Return False
        Else
            MATRIZ(INICIO) = ELEMENTO
            INICIO += 1
            Return True
        End If
    End Function

    Function Retirar(ByRef ELEMENTO As Integer) As Boolean
        If (Vazia()) Then
            WriteLine("Impossivel retirar elemento - fila vazia.")
            ELEMENTO = -1
            Return False
        Else
            ELEMENTO = MATRIZ(0)
            Array.Copy(MATRIZ, 1, MATRIZ, 0, INICIO - 1)
            INICIO -= 1
            Return True
        End If
    End Function

    Sub Entrada()
        Dim X As Integer
        Write("Entre com um elemento numerico: ")
        X = Convert.ToInt32(ReadLine())
        WriteLine()
        If (Adicionar(X)) Then
            WriteLine("Elemento " & X & " inserido na posicao " & INICIO)
        End If
        WriteLine()
    End Sub

    Sub Saida()
        Dim ELEMENTO As Integer
        If (Retirar(ELEMENTO)) Then
            WriteLine("Elemento " & ELEMENTO & " retirado do inicio da fila.")
        End If
        WriteLine()
    End Sub

    Sub Atual()
        If (Vazia()) Then
            WriteLine("Impossivel apresentar - fila vazia.")
        Else
            WriteLine(MATRIZ(0) & " - primeiro elemento da fila.")
        End If
        WriteLine()
    End Sub

    Sub Exibicao()
        If (Vazia()) Then
            WriteLine("Impossivel apresentar - fila vazia.")
        Else
            For I As Integer = 0 To INICIO - 1
                WriteLine("Posicao: {0,2} = {1}", I + 1, MATRIZ(I))
            Next
        End If
        WriteLine()
    End Sub

    Sub Criar()
        Array.Clear(MATRIZ, 0, MATRIZ.Length)
        INICIO = 0
    End Sub

    Sub Main(args As String())
        Criar()
        Dim OPCAO As Integer = 0
        While (OPCAO <> 6)
            WriteLine("PROGRAMA: FILA")
            WriteLine()
            WriteLine("[1] - Entrada")
            WriteLine("[2] - Saida")
            WriteLine("[3] - Apresentar 1o. da fila")
            WriteLine("[4] - Apresentar a fila")
            WriteLine("[5] - Nova fila")
            WriteLine("[6] - Sair")
            WriteLine()
            Write("Escolha uma opcao: ")
            OPCAO = Integer.Parse(ReadLine())
            WriteLine()
            If (OPCAO <> 6) Then
                Select Case (OPCAO)
                    Case 1
                        Entrada()
                    Case 2
                        Saida()
                    Case 3
                        Atual()
                    Case 4
                        Exibicao()
                    Case 5
                        Criar()
                    Case Else
                        WriteLine("Opcao invalida. Tente novamente.")
                        WriteLine()
                End Select
            End If
        End While
    End Sub
End Module
