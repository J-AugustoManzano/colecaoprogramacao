// c08ex10.cs

using System;
using static System.Console;

class Program
{
    static int FibonacciBase(int N, int X, int Y)
    {
        if (N == 0)
            return X;
        else if (N == 1)
            return Y;
        else
            return FibonacciBase(N - 1, Y, X + Y);
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
