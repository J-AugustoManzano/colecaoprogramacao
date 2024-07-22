' c04ex07.vb

Imports System
Imports System.Console

Module Program
    Sub Main(args As String())
        Dim Numero As Integer

        Write("Entre um numero inteiro: ")
        Numero = Integer.Parse(ReadLine())

        If (Numero >= 20 And Numero <= 90) Then
            WriteLine("O numero esta na faixa de 20 a 90.")
        Else
            WriteLine("O numero esta fora da faixa de 20 a 90.")
        End If

        Write(vbCrLf & "Aperte <Enter> para encerrar... ")
        ReadLine()
    End Sub
End Module
