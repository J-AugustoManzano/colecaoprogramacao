// c03ex06.cs

using System;
using System.Linq;
using static System.Console;

public class Program
{
    public static void Main(string[] args)
    {
        string palavra = "COMPUTADOR";
        int tamanho = palavra.Length;
        string copias = palavra + palavra + palavra;
        string reverso = new string(palavra.ToCharArray()
          .Reverse().ToArray());
        string novaPalavra = palavra.Substring(0, 6) 
          + "O" + palavra.Substring(7);

        WriteLine($"Palavra ........: {palavra}");
        WriteLine();
        WriteLine($"Lado esquerdo ..: {palavra.Substring(0, 3)}");
        WriteLine($"Centro .........: {palavra.Substring(3, 4)}");
        WriteLine($"Lado direito ...: {palavra.Substring(tamanho - 3)}");
        WriteLine($"Reverso ........: {reverso}");
        WriteLine($"Copias .........: {copias}");
        WriteLine($"Tira pedaco ....: {palavra.Substring(0, 7)}");
        WriteLine($"Nova palavra ...: {novaPalavra}");

        Write("\nAperte <Enter> para encerrar... ");
        ReadLine();
    }
}
