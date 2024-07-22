' c05ex06.vb

Imports System
Imports System.Console

Module Program
    Sub Main(args As String())
        Dim RESP As Char
        Dim N As Integer
        Dim R As Integer

        RESP = "S"c
        Do
            Write("Entre um valor numerico: ")
            N = Integer.Parse(ReadLine())

            R = N * 3

            WriteLine("Resultado = " & R & vbCrLf)

            Write("Deseja continuar? (S/N): ")
            RESP = Char.ToUpper(ReadLine().Chars(0))

            WriteLine()
        Loop Until (Char.ToUpper(RESP) <> "S"c)

        Write(vbCrLf & "Tecle <Enter> para encerrar... ")
        ReadLine()
    End Sub
End Module
