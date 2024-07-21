// c05ex11.cs

using System;
using static System.Console;

class Program
{
    static void Main(string[] args)
    {
        int I, N, R;

        for (I = 1; I <= 5; I++)
        {
            Write("Entre um valor numerico: ");
            N = int.Parse(ReadLine());

            R = N * 3;

            WriteLine($"Resultado = {R}\n");
        }

        Write("\nTecle <Enter> para encerrar... ");
        ReadLine();
    }
}
