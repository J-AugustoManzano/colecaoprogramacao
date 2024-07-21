// c04ex07.cs

using System;
using static System.Console;

class Program
{
    static void Main(string[] args)
    {
        int Numero;

        Write("Entre um numero inteiro: ");
        Numero = int.Parse(ReadLine());

        if ((Numero >= 20) && (Numero <= 90))
            WriteLine("O numero esta na faixa de 20 a 90.");
        else
            WriteLine("O numero esta fora da faixa de 20 a 90.");

        Write("\nAperte <Enter> para encerrar... ");
        ReadLine();
    }
}
