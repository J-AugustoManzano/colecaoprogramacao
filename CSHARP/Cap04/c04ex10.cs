// c04ex10.cs

using System;
using static System.Console;

class Program
{
    static void Main(string[] args)
    {
        int A, B, X, C;

        Write("Entre valor para a variavel <A>: ");
        A = int.Parse(Console.ReadLine());

        Write("Entre valor para a variavel <B>: ");
        B = int.Parse(Console.ReadLine());

        Write("Entre valor para a variavel <X>: ");
        X = int.Parse(Console.ReadLine());

        if (!(X > 5))
            C = A - B;
        else
            C = A + B;

        WriteLine($"\nResultado = {C}");

        Write("\nPressione <Enter> para encerrar... ");
        ReadLine();
    }
}
