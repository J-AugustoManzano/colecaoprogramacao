// c07ex09.cs

using System;
using static System.Console;

class Program
{
    static int FatorialBase(int N, int P)
    {
        if (N == 0)
            return P;
        else
            return FatorialBase(N - 1, N * P);
    }

    static int Fatorial(int N)
    {
        return FatorialBase(N, 1);
    }

    public static void Main(string[] args)
    {
        int Limite;

        Write("Qual fatorial: ");
        Limite = int.Parse(ReadLine());

        WriteLine($"Fatorial = {Fatorial(Limite)}");

        Write("\nTecle <Enter> para encerrar... ");
        ReadLine();
    }
}
