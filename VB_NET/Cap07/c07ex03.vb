' c07ex03.vb

Imports System
Imports System.Console

Module Program
    Dim A As Integer, B As Integer

    Sub Troca()
        Dim X As Integer = A
        A = B
        B = X
    End Sub

    Sub Main(args As String())
        Write("Entre um valor para a variavel <A>: ")
        A = Integer.Parse(Console.ReadLine())

        Write("Entre um valor para a variavel <B>: ")
        B = Integer.Parse(Console.ReadLine())

        Troca()

        WriteLine()
        WriteLine("Variavel <A> com valor " & A)
        WriteLine("Variavel <B> com valor " & B)

        Write(vbCrLf  & "Tecle <Enter> para encerrar... ")
        ReadLine()
    End Sub
End Module
