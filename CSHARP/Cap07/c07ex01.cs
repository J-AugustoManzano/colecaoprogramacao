// c07ex01.cs

using System;
using static System.Console;

class Program
{
    static void RotinadeAdicao()
    {
        float a1, b1, r1;
        WriteLine();
        WriteLine("Rotina de Adicao");
        WriteLine();
        Write("Entre o 1o. valor: ");
        a1 = float.Parse(ReadLine());
        Write("Entre o 2o. valor: ");
        b1 = float.Parse(ReadLine());
        WriteLine();
        r1 = a1 + b1;
        WriteLine($"O resultado da operacao equivale a: {r1}");
        WriteLine();
    }

    static void RotinadeSubtracao()
    {
        float a2, b2, r2;
        WriteLine();
        WriteLine("Rotina de Subtracao");
        WriteLine();
        Write("Entre o 1o. valor: ");
        a2 = float.Parse(ReadLine());
        Write("Entre o 2o. valor: ");
        b2 = float.Parse(ReadLine());
        WriteLine();
        r2 = a2 - b2;
        WriteLine($"O resultado da operacao equivale a: {r2}");
        WriteLine();
    }

    static void RotinaDeMultiplicacao()
    {
        float a3, b3, r3;
        WriteLine();
        WriteLine("Rotina de Multiplicacao");
        WriteLine();
        Write("Entre o 1o. valor: ");
        a3 = float.Parse(ReadLine());
        Write("Entre o 2o. valor: ");
        b3 = float.Parse(ReadLine());
        WriteLine();
        r3 = a3 * b3;
        WriteLine($"O resultado da operacao equivale a: {r3}");
        WriteLine();
    }

    static void RotinaDeDivisao()
    {
        float a4, b4, r4;
        WriteLine();
        WriteLine("Rotina de Divisao");
        WriteLine();
        Write("Entre o 1o. valor: ");
        a4 = float.Parse(ReadLine());
        Write("Entre o 2o. valor: ");
        b4 = float.Parse(ReadLine());
        WriteLine();
        if (b4 == 0)
            WriteLine("O resultado da operacao equivale a: ERRO");
        else
        {
            r4 = a4 / b4;
            WriteLine($"O resultado da operacao equivale a: {r4}");
        }
        WriteLine();
    }

    static void Main(string[] args)
    {
        int opcao = 0;
        while (opcao != 5)
        {
            WriteLine("CALCULADORA - V1");
            WriteLine();
            WriteLine("[1] - Adicao");
            WriteLine("[2] - Subtracao");
            WriteLine("[3] - Multiplicacao");
            WriteLine("[4] - Divisao");
            WriteLine("[5] - Fim de Programa");
            WriteLine();
            Write("Escolha uma opcao: ");
            opcao = int.Parse(ReadLine());

            if (opcao != 5)
            {
                switch (opcao)
                {
                    case 1:
                        RotinadeAdicao();
                        break;
                    case 2:
                        RotinadeSubtracao();
                        break;
                    case 3:
                        RotinaDeMultiplicacao();
                        break;
                    case 4:
                        RotinaDeDivisao();
                        break;
                    default:
                        WriteLine();
                        WriteLine("Opcao invalida - Tente novamente");
                        WriteLine();
                        break;
                }
            }
        }
    }
}
