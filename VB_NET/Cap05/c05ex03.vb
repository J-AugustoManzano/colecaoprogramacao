' c05ex03.vb

Imports System
Imports System.Console

Module Program
    Sub Main(args As String())
        Dim I As Integer
        Dim N As Integer
        Dim R As Integer

        I = 1
        Do Until (I > 5)
            Write("Entre um valor numerico: ")
            N = Integer.Parse(ReadLine())

            R = N * 3

            WriteLine("Resultado = " & R & vbCrLf)

            I += 1
        Loop

        Write(vbCrLf & "Tecle <Enter> para encerrar... ")
        ReadLine()
    End Sub
End Module
