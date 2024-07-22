' c04ex10.vb

Imports System
Imports System.Console

Module Program
    Sub Main(args As String())
        Dim A As Integer
        Dim B As Integer
        Dim X As Integer
        Dim C As Integer

        Write("Entre valor para a variavel <A>: ")
        A = Integer.Parse(ReadLine())

        Write("Entre valor para a variavel <B>: ")
        B = Integer.Parse(ReadLine())

        Write("Entre valor para a variavel <X>: ")
        X = Integer.Parse(ReadLine())

        If Not (X > 5) Then
            C = A - B
        Else
            C = A + B
        End If

        WriteLine(vbCrLf & "Resultado = " & C)

        Write(vbCrLf & "Pressione <Enter> para encerrar... ")
        ReadLine()
    End Sub
End Module
