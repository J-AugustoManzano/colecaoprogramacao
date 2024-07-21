// c07ex07.cs

using System;
using static System.Console;

class Program
{
    static bool Igual(int A, int B)
    {
        return A == B;
    }

    public static void Main(string[] args)
    {
        int X, Y;

        Write("Informe o 1o. valor: ");
        X = int.Parse(ReadLine());

        Write("Informe o 2o. valor: ");
        Y = int.Parse(ReadLine());

        if (Igual(X, Y))
            WriteLine("Valores sao iguais");
        else
            WriteLine("Valores sao diferentes");

        Write("\nTecle <Enter> para encerrar... ");
        ReadLine();
    }
}
