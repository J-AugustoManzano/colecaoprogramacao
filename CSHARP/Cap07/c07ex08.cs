// c07ex08.cs

using System;
using static System.Console;

class Program
{
    static int Fatorial(int N)
    {
        if (N == 0)
            return 1;
        else
            return N * Fatorial(N - 1);
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
