// c05ex05.cs

using System;
using static System.Console;

class Program
{
    static void Main(string[] args)
    {
        int I, N, R;

        I = 1;
        do
        {
            Write("Entre um valor numerico: ");
            N = int.Parse(ReadLine());

            R = N * 3;

            WriteLine($"Resultado = {R}\n");

            I++;
        } while (!(I > 5));

        Write("\nTecle <Enter> para encerrar... ");
        ReadLine();
    }
}
