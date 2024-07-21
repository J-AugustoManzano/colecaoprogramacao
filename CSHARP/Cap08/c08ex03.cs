// c08ex03.cs

using System;
using static System.Console;

class Program
{
    static void Main(string[] args)
    {
        int[] Numeros = new int[5];
        int I, J, X;

        WriteLine("CLASSIFICACAO DE NUMEROS (CRESCENTE)\n");

        for (I = 0; I <= 4; ++I)
        {
            Write($"Entre o {I + 1}o. numero: ");
            Numeros[I] = int.Parse(ReadLine());
        }

        for (I = 0; I <= 3; ++I)
            for (J = I + 1; J <= 4; ++J)
                if (Numeros[I] > Numeros[J])
                {
                    X = Numeros[I];
                    Numeros[I] = Numeros[J];
                    Numeros[J] = X;
                }

        WriteLine();
        for (I = 0; I <= 4; ++I)
            WriteLine($"{I + 1}o. numero: {Numeros[I]}");

        Write("\nTecle <Enter> para encerrar... ");
        ReadLine();
    }
}
