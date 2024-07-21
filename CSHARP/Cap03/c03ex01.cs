// c03ex01.cs

using System;

public class Program
{
    public static void Main(string[] args)
    {
        int A, B, X;

        Console.Write("Entre o 1o. valor numerico inteiro: ");
        A = int.Parse(Console.ReadLine());

        Console.Write("Entre o 2o. valor numerico inteiro: ");
        B = int.Parse(Console.ReadLine());

        X = A + B;

        Console.WriteLine("Resultado = " + X);

        Console.Write("\nTecle <Enter> para encerrar... ");
        Console.ReadLine();
    }
}
