' c05ex09.vb

Imports System
Imports System.Console

Module Program
    Sub Main(args As String())
        Dim I As Integer
        Dim N As Integer
        Dim R As Integer

        I = 1
        Do
            Write("Entre um valor numerico: ")
            N = Integer.Parse(ReadLine())

            R = N * 3

            WriteLine("Resultado = " & R & vbCrLf)
            
            If (I > 4) Then
                Exit Do
            End If 

            I += 1
        Loop 

        Write(vbCrLf & "Tecle <Enter> para encerrar... ")
        ReadLine()
    End Sub
End Module
