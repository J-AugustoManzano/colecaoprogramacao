'c08ex08.bas

Function FibonacciBase(N As Integer, X As Integer, Y As Integer) As Integer
    If (N = 0) Then
        FibonacciBase = X
    End If
    If (N = 1) Then
        FibonacciBase = Y
    End If
    If (N = 2) Then
        FibonacciBase = X + Y
    End If
    If (N >= 2) Then
        FibonacciBase = FibonacciBase(N - 1, Y, X + Y)
    End If
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
