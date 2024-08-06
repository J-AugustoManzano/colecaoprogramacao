' c07ex01.vb

Imports System
Imports System.Console

Module Program
    Sub RotAdicao()
        Dim a1 As Single, b1 As Single, r1 As Single
        WriteLine()
        WriteLine("Rotina de Adicao")
        WriteLine()
        Write("Entre o 1o. valor: ")
        a1 = Single.Parse(ReadLine())
        Write("Entre o 2o. valor: ")
        b1 = Single.Parse(ReadLine())
        WriteLine()
        r1 = a1 + b1
        WriteLine($"O resultado da operacao equivale a: {r1}")
        WriteLine()
    End Sub

    Sub RotSubtracao()
        Dim a2 As Single, b2 As Single, r2 As Single
        WriteLine()
        WriteLine("Rotina de Subtracao")
        WriteLine()
        Write("Entre o 1o. valor: ")
        a2 = Single.Parse(ReadLine())
        Write("Entre o 2o. valor: ")
        b2 = Single.Parse(ReadLine())
        WriteLine()
        r2 = a2 - b2
        WriteLine($"O resultado da operacao equivale a: {r2}")
        WriteLine()
    End Sub

    Sub RotMultiplicacao()
        Dim a3 As Single, b3 As Single, r3 As Single
        WriteLine()
        WriteLine("Rotina de Multiplicacao")
        WriteLine()
        Write("Entre o 1o. valor: ")
        a3 = Single.Parse(ReadLine())
        Write("Entre o 2o. valor: ")
        b3 = Single.Parse(ReadLine())
        WriteLine()
        r3 = a3 * b3
        WriteLine($"O resultado da operacao equivale a: {r3}")
        WriteLine()
    End Sub

    Sub RotDivisao()
        Dim a4 As Single, b4 As Single, r4 As Single
        WriteLine()
        WriteLine("Rotina de Divisao")
        WriteLine()
        Write("Entre o 1o. valor: ")
        a4 = Single.Parse(ReadLine())
        Write("Entre o 2o. valor: ")
        b4 = Single.Parse(ReadLine())
        WriteLine()
        If (b4 = 0) Then
            WriteLine("O resultado da operacao equivale a: ERRO")
        Else
            r4 = a4 / b4
            WriteLine($"O resultado da operacao equivale a: {r4}")
        End If
        WriteLine()
    End Sub

    Sub Main(args As String())
        Dim opcao As Integer = 0
        While (opcao <> 5)
            WriteLine("CALCULADORA - V1")
            WriteLine()
            WriteLine("[1] - Adicao")
            WriteLine("[2] - Subtracao")
            WriteLine("[3] - Multiplicacao")
            WriteLine("[4] - Divisao")
            WriteLine("[5] - Fim de Programa")
            WriteLine()
            Write("Escolha uma opcao: ")
            opcao = Integer.Parse(ReadLine())

            If (opcao <> 5) Then
                Select Case (opcao)
                    Case 1
                        RotAdicao()
                    Case 2
                        RotSubtracao()
                    Case 3
                        RotMultiplicacao()
                    Case 4
                        RotDivisao()
                    Case Else
                        WriteLine()
                        WriteLine("Opcao invalida - Tente novamente")
                        WriteLine()
                End Select
            End If
        End While
    End Sub
End Module
