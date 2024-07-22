' c04ex11.vb

Imports System
Imports System.Console

Module Program
    Sub Main(args As String())
        Dim N As Integer
        Dim R4 As Integer
        Dim R5 As Integer

        Write("Entre um numero inteiro: ")
        N = Integer.Parse(ReadLine())

        R4 = N Mod 4
        R5 = N Mod 5

        If (R4 = 0 And R5 = 0) Then
            WriteLine("Resultado = " & N)
        Else
            WriteLine("Valor nao e divisivel por 4 e 5")
        End If

        Write(vbCrLf & "Tecle <Enter> para encerrar... ")
        ReadLine()
    End Sub
End Module
