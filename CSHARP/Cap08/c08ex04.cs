// c08ex04.cs

using System;
using static System.Console;

class Program
{
    static void Main(string[] args)
    {
        string[] Nomes = new string[5];
        string X;

        int I, J;

        WriteLine("CLASSIFICACAO DE NOMES (DECRESCENTE)\n");

        for (I = 0; I <= 4; ++I)
        {
            Write($"Entre o {I + 1}o. nome: ");
            Nomes[I] = ReadLine();
        }

        for (I = 0; I <= 3; ++I)
            for (J = I + 1; J <= 4; ++J)
                if (Nomes[I].CompareTo(Nomes[J]) > 0)
                {
                    X = Nomes[I];
                    Nomes[I] = Nomes[J];
                    Nomes[J] = X;
                }

        WriteLine();
        for (I = 0; I <= 4; ++I)
            WriteLine($"{I + 1}o. nome: {Nomes[I]}");

        Write("\nTecle <Enter> para encerrar... ");
        ReadLine();
    }
}
