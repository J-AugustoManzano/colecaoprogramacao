// c08ex10.cs

using System;
using static System.Console;

class Program
{
    static int FibonacciBase(int N, int X, int Y)
    {
        if (N == 0)
            return X;
        if (N == 1)
            return Y;
        if (N == 2)
            return X + Y;
        if (N >= 2)
            return FibonacciBase(N - 1, Y, X + Y);
        return 0;
    }
    
    static int Fibonacci(int N)
    {
        return FibonacciBase(N, 0, 1);
    }

    static void Main(string[] args)
    {
        for (int I = 0; I <= 14; I++)
            WriteLine($"{I} - {Fibonacci(I)}");

        Write("\nPressione <Enter> para sair... ");
        ReadLine();
    }
}
