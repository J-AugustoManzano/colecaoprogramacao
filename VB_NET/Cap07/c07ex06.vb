' c07ex06.vb

Imports System
Imports System.Console

Module Program
    Function Fatorial(ByVal N As Integer) As Integer
        Dim Fat As Integer = 1
        For I As Integer = 1 To N
            Fat *= I
        Next
        Return Fat
    End Function

    Sub Main(args As String())
        Dim Limite As Integer

        Write("Qual fatorial: ")
        Limite = Integer.Parse(ReadLine())

        WriteLine($"Fatorial = {Fatorial(Limite)}")

        Write(vbCrLf & "Tecle <Enter> para encerrar... ")
        ReadLine()
    End Sub
End Module
