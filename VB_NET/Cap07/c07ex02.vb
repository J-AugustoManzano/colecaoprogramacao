' c07ex02.vb

Imports System
Imports System.Console

Module Program
    Sub Main(args As String())
        Dim A As Integer, B As Integer, X As Integer

        Write("Entre um valor para a variavel <A>: ")
        A = Integer.Parse(Console.ReadLine())

        Write("Entre um valor para a variavel <B>: ")
        B = Integer.Parse(Console.ReadLine())

        X = A
        A = B
        B = X

        WriteLine()
        WriteLine("Variavel <A> com valor " & A)
        WriteLine("Variavel <B> com valor " & B)

        Write(vbCrLf      & "Tecle <Enter> para encerrar... ")
        ReadLine()
    End Sub
End Module
