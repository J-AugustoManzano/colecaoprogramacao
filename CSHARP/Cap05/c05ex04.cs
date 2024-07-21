// c05ex04.cs

using System;
using static System.Console;

class Program
{
    static void Main(string[] args)
    {
        char RESP;
        int N, R;

        RESP = 'S';
        while (!(char.ToUpper(RESP) != 'S'))
        {
            Write("Entre um valor numerico: ");
            N = int.Parse(ReadLine());

            R = N * 3;

            WriteLine($"Resultado = {R}\n");

            Write("Deseja continuar? (S/N): ");
            RESP = char.ToUpper(ReadLine()[0]);

            WriteLine();
        }

        Write("\nTecle <Enter> para encerrar... ");
        ReadLine();
    }
}
