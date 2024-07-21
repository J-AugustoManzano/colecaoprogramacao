// c04ex02.cs

using System;
using static System.Console;

class Program
{
    static void Main(string[] args)
    {
        int A, B, X;

        Write("Entre o 1o. valor numerico: ");
        A = int.Parse(Console.ReadLine());

        Write("Entre o 2o. valor numerico: ");
        B = int.Parse(Console.ReadLine());

        if (A > B)
        {
            X = A;
            A = B;
            B = X;
        }

        WriteLine("Os valores sao: " + A + " e " + B + ".");

        Write("\nAperte <Enter> para encerrar... ");
        ReadLine();
    }
}
