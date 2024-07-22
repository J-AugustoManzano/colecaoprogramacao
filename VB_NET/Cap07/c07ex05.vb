' c07ex05.vb

Imports System
Imports System.Console

Module Program
    Sub Fatorial(ByVal N As Integer, ByRef Fat As Integer)
        Fat = 1
        For I As Integer = 1 To N
            Fat *= I
        Next
    End Sub

    Sub Main(args As String())
        Dim Resp As Integer, Limite As Integer

        Resp = 1

        Write("Qual fatorial: ")
        Limite = Integer.Parse(ReadLine())

        Fatorial(Limite, Resp)

        WriteLine($"Fatorial = {Resp}")

        Write(vbCrLf  & "Tecle <Enter> para encerrar... ")
        ReadLine()
    End Sub
End Module
