// c04ex01.cs

using System;

class Program
{
    static void Main(string[] args)
    {
        int A, B, X;

        Console.Write("Entre o 1o. valor numerico: ");
        A = int.Parse(Console.ReadLine());

        Console.Write("Entre o 2o. valor numerico: ");
        B = int.Parse(Console.ReadLine());

        X = A + B;

        if (X > 10)
            Console.WriteLine("Resultado = " + X);

        Console.Write("\nAperte <Enter> para encerrar... ");
        Console.ReadLine();
    }
}
