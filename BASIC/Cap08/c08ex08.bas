'c08ex08.bas

Function FibonacciBase(N As Integer, X As Integer, Y As Integer) As Integer
    Dim FB As Integer
    If (N = 0) Then
        FB = X
    ElseIf (N = 1) Then
        FB = Y
    Else
        FB = FibonacciBase(N - 1, Y, X + Y)
    End If
    FibonacciBase = FB
End Function

Function Fibonacci(N As Integer) As Integer
    Fibonacci = FibonacciBase(N, 0, 1)
End Function

Dim I As Integer

For I = 0 To 14
    Print Using "## - "; I;
    Print Fibonacci(I)
Next I

Print
Print "Tecle <Enter> para encerrar... ";
Getkey
