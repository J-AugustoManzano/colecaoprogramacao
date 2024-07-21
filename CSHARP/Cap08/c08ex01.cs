// c08ex01.cs

using System;
using System.Text.RegularExpressions;
using static System.Console;

class Program
{
    static bool ValidaInteiro(string entrada)
    {
        return Regex.IsMatch(entrada, @"^[+-]?\d+$");
    }

    static void Main(string[] args)
    {
        string numero;

        while (true)
        {
            Write("Entre um valor numerico inteiro: ");
            numero = ReadLine();
            WriteLine();

            if (string.IsNullOrEmpty(numero))
            {
                WriteLine("Erro: Tecla <Enter> acionada acidentalmente.");
                WriteLine();
                continue;
            }

            if (!ValidaInteiro(numero))
            {
                WriteLine("Erro: Entre um valor numerico.\n");
                continue;
            }

            break;
        }

        WriteLine($"Entrada valida fornecida: {numero}");

        WriteLine();
        Write("Tecle <Enter> para encerrar... ");
        ReadLine();
    }
}
