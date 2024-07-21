// c07ex06.cs

using System;
using static System.Console;

class Program
{
    static int Fatorial(int N)
    {
        int Fat = 1;
        for (int I = 1; I <= N; I++)
            Fat *= I;
        return Fat;
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
