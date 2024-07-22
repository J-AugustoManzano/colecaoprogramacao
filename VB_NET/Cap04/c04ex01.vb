' c04ex01.vb

Imports System

Module Program
    Sub Main(args As String())
        Dim A As Integer, B As Integer, X As Integer

        Console.Write("Entre o 1o. valor numerico: ")
        A = Integer.Parse(Console.ReadLine())

        Console.Write("Entre o 2o. valor numerico: ")
        B = Integer.Parse(Console.ReadLine())

        X = A + B

        If (X > 10) Then
            Console.WriteLine("Resultado = " & X)
        End If

        Console.Write(vbCrLf & "Aperte <Enter> para encerrar... ")
        Console.ReadLine()
    End Sub
End Module
