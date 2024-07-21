// c07ex04.cs

using System;
using static System.Console;

class Program
{
    static void Fatorial(int N)
    {
        int Fat = 1;
        for (int I = 1; I <= N; I++)
            Fat *= I;
        WriteLine($"Fatorial = {Fat}");
    }

    static int Limite;

    public static void Main(string[] args)
    {
        Write("Qual fatorial: ");
        Limite = int.Parse(ReadLine());

        Fatorial(Limite);

        Write("\nTecle <Enter> para encerrar... ");
        ReadLine();
    }
}
