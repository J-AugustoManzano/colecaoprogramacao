// c04ex11.cs

using System;
using static System.Console;

class Program
{
    static void Main(string[] args)
    {
        int N, R4, R5;

        Write("Entre um numero inteiro: ");
        N = int.Parse(ReadLine());

        R4 = N % 4;
        R5 = N % 5;

        if (R4 == 0 && R5 == 0)
            WriteLine($"Resultado = {N}");
        else
            WriteLine("Valor nao e divisivel por 4 e 5");

        Write("\nTecle <Enter> para encerrar... ");
        ReadLine();
    }
}
