// c07ex02.cs

using System;
using static System.Console;

class Program
{
    static void Main(string[] args)
    {
        int A, B, X;

        Write("Entre um valor para a variavel <A>: ");
        A = int.Parse(ReadLine());

        Write("Entre um valor para a variavel <B>: ");
        B = int.Parse(ReadLine());

        X = A;
        A = B;
        B = X;

        WriteLine();
        WriteLine("Variavel <A> com valor " + A);
        WriteLine("Variavel <B> com valor " + B);

        Write("\nTecle <Enter> para encerrar... ");
        ReadLine();
    }
}
