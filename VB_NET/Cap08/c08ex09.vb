' c08ex09.vb

Imports System
Imports System.Console

Module Program
    Function Fibonacci(ByVal N As Integer) As Integer
        If (N = 0) Then
            Return 0
        ElseIf (N = 1) Then
            Return 1
        ElseIf (N >= 2) Then
            Return Fibonacci(N - 1) + Fibonacci(N - 2)
        Else
            Return 0 ' Para evitar aviso de retorno implícito
        End If
    End Function

    Sub Main(args As String())
        For I As Integer = 0 To 14
            WriteLine($"{I} - {Fibonacci(I)}")
        Next
        Write(vbCrLf & "Pressione <Enter> para sair... ")
        ReadLine()
    End Sub
End Module
