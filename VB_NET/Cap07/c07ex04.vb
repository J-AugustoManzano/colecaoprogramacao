' c07ex04.vb

Imports System
Imports System.Console

Module Program
    Sub Fatorial(ByVal N As Integer)
        Dim Fat As Integer = 1
        For I As Integer = 1 To N
            Fat *= I
        Next
        WriteLine($"Fatorial = {Fat}")
    End Sub

    Dim Limite As Integer

    Sub Main(args As String())
        Write("Qual fatorial: ")
        Limite = Integer.Parse(ReadLine())

        Fatorial(Limite)

        Write(vbCrLf  & "Tecle <Enter> para encerrar... ")
        ReadLine()
    End Sub
End Module
