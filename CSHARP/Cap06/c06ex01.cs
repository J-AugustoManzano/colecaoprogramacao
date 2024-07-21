// c06ex01.cs

using System;
using static System.Console;

class Program
{
    static void Main(string[] args)
    {
        double[] MD = new double[8];
        double SOMA = 0.0, MEDIA;

        for (int I = 0; I <= 7; I++)
        {
            Write("Entre a media do aluno {0}: ", I + 1);
            MD[I] = double.Parse(ReadLine());
            SOMA += MD[I];
        }

        MEDIA = SOMA / 8;

        WriteLine();
        WriteLine("Media geral: {0:F2}", MEDIA);

        Write("\nTecle <Enter> para encerrar... ");
        ReadLine();
    }
}
