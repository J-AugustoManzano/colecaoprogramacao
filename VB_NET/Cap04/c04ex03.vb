' c04ex03.vb

Imports System
Imports System.Console

Module Program
    Sub Main(args As String())
        Dim A As Integer, B As Integer, X As Integer, R As Integer

        Write("Entre o 1o. valor numerico: ")
        A = Integer.Parse(ReadLine())

        Write("Entre o 2o. valor numerico: ")
        B = Integer.Parse(ReadLine())

        X = A + B

        If (X >= 10) Then
            R = X + 5
        Else
            R = X - 7
        End If

        WriteLine("Resultado = " & R)

        Write(vbCrLf & "Aperte <Enter> para encerrar... ")
        ReadLine()
    End Sub
End Module
