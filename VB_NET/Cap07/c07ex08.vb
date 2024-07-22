' c07ex08.vb

Imports System
Imports System.Console

Module Program
    Function Fatorial(ByVal N As Integer) As Integer
        If (N = 0) Then
            Return 1
        Else
            Return N * Fatorial(N - 1)
        End If
    End Function

    Public Sub Main(args As String())
        Dim Limite As Integer

        Write("Qual fatorial: ")
        Limite = Integer.Parse(ReadLine())

        WriteLine($"Fatorial = {Fatorial(Limite)}")

        Write(vbCrLf & "Tecle <Enter> para encerrar... ")
        ReadLine()
    End Sub
End Module
