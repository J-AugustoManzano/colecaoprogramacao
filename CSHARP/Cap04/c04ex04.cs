// c04ex04.cs

using System;
using static System.Console;

class Program
{
    static void Main(string[] args)
    {
        float N1, N2, N3, N4, NE, MD1, MD2;

        Write("Entre a 1a. nota .......: ");
        N1 = float.Parse(ReadLine());

        Write("Entre a 2a. nota .......: ");
        N2 = float.Parse(ReadLine());

        Write("Entre a 3a. nota .......: ");
        N3 = float.Parse(ReadLine());

        Write("Entre a 4a. nota .......: ");
        N4 = float.Parse(ReadLine());

        MD1 = (N1 + N2 + N3 + N4) / 4;

        WriteLine();
        if (MD1 >= 7)
        {
            WriteLine("Aprovado");
            WriteLine("Media: {0:F2}", MD1);
        }
        else
        {
            Write("Entre a nota de exame ..: ");
            NE = float.Parse(ReadLine());

            MD2 = (MD1 + NE) / 2;

            WriteLine();
            if (MD2 >= 5)
                WriteLine("Aprovado em exame");
            else
                WriteLine("Reprovado");
            WriteLine("Media: {0:F2}", MD2);
        }

        Write("\nAperte <Enter> para encerrar... ");
        ReadLine();
    }
}
