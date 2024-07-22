' c08ex10.vb

Imports System
Imports System.Console

Module Program
    Function FibonacciBase(ByVal N As Integer, ByVal X As Integer, _
        ByVal Y As Integer) As Integer
        If (N = 0) Then
            Return X
        ElseIf (N = 1) Then
            Return Y
        Else
            Return FibonacciBase(N - 1, Y, X + Y)
        End If
    End Function

    Function Fibonacci(ByVal N As Integer) As Integer
        Return FibonacciBase(N, 0, 1)
    End Function

    Sub Main(ByVal args() As String)
        For I As Integer = 0 To 14
            WriteLine($"{I} - {Fibonacci(I)}")
        Next
        Write(vbCrLf & "Pressione <Enter> para sair... ")
        ReadLine()
    End Sub
End Module
