// c03ex07.cs

using System;
using static System.Console;

class Program
{
    static void Main(string[] args)
    {
        string frase = "Aprendendo C# com o Professor Manzano";
        string[] palavras = frase.Split(' ');
        string busca = "C#";
        int pos;

        WriteLine("Frase ......: " + frase);
        Write("              -------------------------------------\n");
        Write("              0000000001111111111222222222233333333\n");
        Write("              0123456789012345678901234567890123456\n");
        WriteLine();

        Write("Tamanho ....: " + frase.Length + " caracteres\n");
        WriteLine();

        for (int i = 0; i <= 3; i++)
        {
            Write("Palavra " + (i + 1) + " .............: ");
            WriteLine(palavras[i]);
        }
        WriteLine();

        WriteLine("Letra 1 da Palavra 1 ..: " + palavras[0][0]);
        WriteLine("Letra 2 da Palavra 1 ..: " + palavras[0][1]);
        WriteLine("Letra 3 da Palavra 1 ..: " + palavras[0][2]);
        WriteLine("Letra 4 da Palavra 1 ..: " + palavras[0][3]);
        WriteLine();

        pos = frase.IndexOf(busca) + 1;
        WriteLine("A palavra 'C#' na posicao: " + pos);

        Write("\nTecle <Enter> para encerrar... ");
        ReadLine();
    }
}
