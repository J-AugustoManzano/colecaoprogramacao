' c07ex09.vb

Imports System
Imports System.Console

Module Program
    Function FatorialBase(ByVal N As Integer, ByVal P As Integer) _
        As Integer
        If (N = 0) Then
            Return P
        Else
            Return FatorialBase(N - 1, N * P)
        End If
    End Function

    Function Fatorial(ByVal N As Integer) As Integer
        Return FatorialBase(N, 1)
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
