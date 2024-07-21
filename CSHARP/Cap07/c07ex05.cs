// c07ex05.cs

using System;
using static System.Console;

class Program
{
    static void Fatorial(int N, out int Fat)
    {
        Fat = 1;
        for (int I = 1; I <= N; I++)
            Fat *= I;
    }

    public static void Main(string[] args)
    {
        int Resp, Limite;

        Resp = 1;

        Write("Qual fatorial: ");
        Limite = int.Parse(ReadLine());

        Fatorial(Limite, out Resp);

        WriteLine($"Fatorial = {Resp}");

        Write("\nTecle <Enter> para encerrar... ");
        ReadLine();
    }
}
