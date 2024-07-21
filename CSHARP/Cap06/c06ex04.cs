// c06ex04.cs

using System;
using System.Collections.Generic;
using static System.Console;

class Program
{
    static void Main(string[] args)
    {
        int N;
        List<string> A = new List<string>();

        Write("Entre a quantidade de elementos da matriz: ");
        N = int.Parse(ReadLine());
        WriteLine();

        for (int I = 0; I <= N - 1; ++I)
        {
            Write($"Entre o {I + 1}o. nome: ");
            A.Add(ReadLine());
        }

        WriteLine();
        WriteLine("Foram fornecidos os nomes:");
        WriteLine();

        for (int I = 0; I <= N - 1; ++I)
        {
            WriteLine($"Nome {I + 1} = {A[I]}");
        }

        Write("\nTecle <Enter> para encerrar... ");
        ReadLine();
    }
}
