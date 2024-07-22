' c04ex02.vb

Imports System
Imports System.Console

Module Program
    Sub Main(args As String())
        Dim A As Integer, B As Integer, X As Integer

        Write("Entre o 1o. valor numerico: ")
        A = Integer.Parse(Console.ReadLine())

        Write("Entre o 2o. valor numerico: ")
        B = Integer.Parse(Console.ReadLine())

        If (A > B) Then
            X = A
            A = B
            B = X
        End If

        WriteLine("Os valores sao: " & A & " e " & B & ".")

        Write(vbCrLf & "Aperte <Enter> para encerrar... ")
        ReadLine()
    End Sub
End Module
