// c04ex03.cs

using System;
using static System.Console;

class Program
{
    static void Main(string[] args)
    {
        int A, B, X, R;

        Write("Entre o 1o. valor numerico: ");
        A = int.Parse(ReadLine());

        Write("Entre o 2o. valor numerico: ");
        B = int.Parse(ReadLine());

        X = A + B;

        if (X >= 10)
            R = X + 5;
        else
            R = X - 7;

        WriteLine("Resultado = " + R);

        Write("\nAperte <Enter> para encerrar... ");
        ReadLine();
    }
}
