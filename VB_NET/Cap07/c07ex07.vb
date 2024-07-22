' c07ex07.vb

Imports System
Imports System.Console

Module Program
    Function Igual(ByVal A As Integer, ByVal B As Integer) As Boolean
        Return A = B
    End Function

    Sub Main(args As String())
        Dim X, Y As Integer

        Write("Informe o 1o. valor: ")
        X = Integer.Parse(ReadLine())

        Write("Informe o 2o. valor: ")
        Y = Integer.Parse(ReadLine())

        If Igual(X, Y) Then
            WriteLine("Valores sao iguais")
        Else
            WriteLine("Valores sao diferentes")
        End If

        Write(vbCrLf & "Tecle <Enter> para encerrar... ")
        ReadLine()
    End Sub
End Module
