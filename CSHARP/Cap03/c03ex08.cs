// c03ex08.cs

/*
 Programa exemplo para operações de duas entradas
 com cálculo de adição e apresentação de resultado.
*/

using System;
using static System.Console;

public class Program
{
    public static void Main(string[] args)
    {
        int A, B, X;

       // Entrada de dados 

        Write("Entre o 1o. valor numerico inteiro: ");
        A = int.Parse(Console.ReadLine());

        Write("Entre o 2o. valor numerico inteiro: ");
        B = int.Parse(Console.ReadLine());

       // Processamento de dados

        X = A + B; // Cálculo da adição

       // Saída de dados 

        WriteLine("Resultado = " + X);

        Write("\nTecle <Enter> para encerrar... ");
        ReadLine();
    }
}
