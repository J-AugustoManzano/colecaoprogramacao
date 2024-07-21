// c07ex03.cs

using System;
using static System.Console;

class Program
{
    static int A, B;

    static void Troca()
    {
        int X = A;
        A = B;
        B = X;
    }

    public static void Main(string[] args)
    {
        Write("Entre um valor para a variavel <A>: ");
        A = int.Parse(ReadLine());

        Write("Entre um valor para a variavel <B>: ");
        B = int.Parse(ReadLine());

        Troca();

        WriteLine();
        WriteLine("Variavel <A> com valor " + A);
        WriteLine("Variavel <B> com valor " + B);

        Write("\nTecle <Enter> para encerrar... ");
        ReadLine();
    }
}
