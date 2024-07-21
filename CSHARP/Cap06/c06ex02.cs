// c06ex02.cs

using System;
using static System.Console;

class Program
{
    static void Main(string[] args)
    {
        double[,] NOTAS = new double[8, 4];
        int I, J;

        for (I = 0; I <= 7; ++I)
        {
            WriteLine("Entre as notas do aluno {0}:", I + 1);
            for (J = 0; J <= 3; ++J)
            {
                Write("Nota {0}: ", J + 1);
                NOTAS[I, J] = double.Parse(ReadLine());
            }
            WriteLine();
        }

        WriteLine("\nRELATORIO DE NOTAS\n");
        WriteLine("Aluno Nota1 Nota2 Nota3 Nota4");
        WriteLine("----- ----- ----- ----- -----");
        for (I = 0; I <= 7; ++I)
        {
            Write("{0,5}", I + 1);
            for (J = 0; J <= 3; ++J)
            {
                Write("{0,6:F1}", NOTAS[I, J]);
            }
            WriteLine();
        }

        Write("\nTecle <Enter> para encerrar... ");
        ReadLine();
    }
}
