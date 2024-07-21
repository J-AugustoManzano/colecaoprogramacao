// c08ex09.cs

using System;
using static System.Console;

class Program
{
    static int Fibonacci(int N)
    {
        if (N == 0)
            return 0;
        if (N == 1)
            return 1;
        if (N >= 2)
            return Fibonacci(N - 1) + Fibonacci(N - 2);
        return 0; // Para evitar aviso de retorno implícito
    }

    static void Main(string[] args)
    {
        for (int I = 0; I <= 14; I++)
            WriteLine($"{I} - {Fibonacci(I)}");

        Write("\nPressione <Enter> para sair... ");
        ReadLine();
    }
}
