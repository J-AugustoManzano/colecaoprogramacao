// c04ex06.cs

using System;
using static System.Console;

class Program
{
    static void Main(string[] args)
    {
        float A, B;
        int Opcao;

        Write("Entre o 1o. valor numerico: ");
        A = float.Parse(ReadLine());

        Write("Entre o 2o. valor numerico: ");
        B = float.Parse(ReadLine());

        WriteLine();
        WriteLine("Escolha uma opcao de menu:");
        WriteLine();
        WriteLine("[1] - Adicao");
        WriteLine("[2] - Subtracao");
        WriteLine("[3] - Multiplicacao");
        WriteLine("[4] - Divisao");
        WriteLine();

        Write("==> ");
        Opcao = int.Parse(ReadLine());
        WriteLine();

        switch (Opcao)
        {
            case 1:
                WriteLine("Calculo de adicao");
                WriteLine($"Resultado: {A + B:F2}");
                break;
            case 2:
                WriteLine("Calculo de subtracao");
                WriteLine($"Resultado: {A - B:F2}");
                break;
            case 3:
                WriteLine("Calculo de multiplicacao");
                WriteLine($"Resultado: {A * B:F2}");
                break;
            case 4:
                WriteLine("Calculo de divisao");
                if (B == 0)
                    WriteLine("Resultado: ERRO");
                else
                    WriteLine($"Resultado: {A / B:F2}");
                break;
            default:
                WriteLine("Entrada invalida");
                WriteLine("Tente novamente em outro momento");
                break;
        }

        Write("\nAperte <Enter> para encerrar... ");
        ReadLine();
    }
}
