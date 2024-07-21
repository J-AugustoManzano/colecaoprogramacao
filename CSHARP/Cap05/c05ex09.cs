// c05ex09.cs

using System;
using static System.Console;

class Program
{
    static void Main(string[] args)
    {
        int I, N, R;

        I = 1;
        loop:
            Write("Entre um valor numerico: ");
            N = int.Parse(ReadLine());

            R = N * 3;

            WriteLine($"Resultado = {R}\n");

            if (I > 4) {goto endloop;}
            I++;
            goto loop;
        endloop:

        Write("\nTecle <Enter> para encerrar... ");
        ReadLine();
    }
}
