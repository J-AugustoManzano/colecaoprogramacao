' c04ex06.vb

Imports System
Imports System.Console

Module Program
    Sub Main(args As String())
        Dim A, B As Single
        Dim Opcao As Integer

        Write("Entre o 1o. valor numerico: ")
        A = Single.Parse(ReadLine())

        Write("Entre o 2o. valor numerico: ")
        B = Single.Parse(ReadLine())

        WriteLine()
        WriteLine("Escolha uma opcao de menu:")
        WriteLine()

        WriteLine("[1] - Adicao")
        WriteLine("[2] - Subtracao")
        WriteLine("[3] - Multiplicacao")
        WriteLine("[4] - Divisao")
        WriteLine()

        Write("==> ")
        Opcao = Integer.Parse(ReadLine())
        WriteLine()

        Select Case (Opcao)
            Case 1
                WriteLine("Calculo de adicao")
                WriteLine($"Resultado: {A + B:F2}")
            Case 2
                WriteLine("Calculo de subtracao")
                WriteLine($"Resultado: {A - B:F2}")
            Case 3
                WriteLine("Calculo de multiplicacao")
                WriteLine($"Resultado: {A * B:F2}")
            Case 4
                WriteLine("Calculo de divisao")
                If (B = 0) Then
                    WriteLine("Resultado: ERRO")
                Else
                    WriteLine($"Resultado: {A / B:F2}")
                End If
            Case Else
                WriteLine("Entrada invalida")
                WriteLine("Tente novamente em outro momento")
        End Select

        Write(vbCrLf & "Aperte <Enter> para encerrar... ")
        ReadLine()
    End Sub
End Module
