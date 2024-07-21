// c08ex02.cs

using System;
using System.Text.RegularExpressions;
using static System.Console;

class Program
{
    static bool ValidaNumero(string entrada)
    {
        return Regex.IsMatch(entrada, @"^[+-]?(\d+|\d+\.\d+)$");
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

            if (!ValidaNumero(numero))
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
