' c05ex11.vb

Imports System
Imports System.Console

Module Program
    Sub Main(args As String())
        Dim I As Integer
        Dim N As Integer
        Dim R As Integer

        For I = 1 To 5 Step 1
            Write("Entre um valor numerico: ")
            N = Integer.Parse(ReadLine())

            R = N * 3

            WriteLine("Resultado = " & R & vbCrLf)

        Next I

        Write(vbCrLf & "Tecle <Enter> para encerrar... ")
        ReadLine()
    End Sub
End Module
