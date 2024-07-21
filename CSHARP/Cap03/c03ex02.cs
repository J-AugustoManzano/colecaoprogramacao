// c03ex02.cs

using System;
using static System.Console;

public class Program
{
    public static void Main(string[] args)
    {
        double R, A;

        Write("Entre valor do raio: ");
        R = double.Parse(ReadLine());

        A = Math.PI * Math.Pow(R, 2);

        WriteLine("Resultado = {0:F2}", A);

        Write("\nAperte <Enter> para encerrar... ");
        ReadLine();
    }
}
