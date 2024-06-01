'c08ex07.bas

Function Fibonacci(N As Integer) As Integer
    Dim Fib As Integer
    If (N = 0) Then
        Fib = 0
    End If
    If (N = 1) Then
        Fib = 1
    End If
    If (N >= 2) Then
        Fib = Fibonacci(N - 1) + Fibonacci(N - 2)
    End If
    Fibonacci = Fib
End Function

Dim I As Integer

For I = 0 To 14
    Print Using "## - "; I;: Print Fibonacci(I)
Next I

Print
Print "Tecle <Enter> para encerrar... ";
Getkey
