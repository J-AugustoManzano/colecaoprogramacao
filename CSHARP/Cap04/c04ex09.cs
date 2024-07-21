// c04ex09.cs

using System;
using static System.Console;

class Program
{
    static void Main(string[] args)
    {
        int prova1, prova2;

        WriteLine("Classificacao esportiva\n");
        WriteLine("Entre '1' se atleta pontuou na 1a prova");
        WriteLine("Entre '1' se atleta pontuou na 2a prova");
        WriteLine("Qualquer outro valor se nao pontuou nas provas\n");

        Write("Prova 1: ");
        prova1 = int.Parse(ReadLine());

        Write("Prova 2: ");
        prova2 = int.Parse(ReadLine());

        if (prova1 == 1 ^ prova2 == 1)
            WriteLine("Atleta participa da terceira prova.");
        else
        {
            WriteLine("Atleta nao participa da terceira prova.");
            if (prova1 == 1 && prova2 == 1)
                WriteLine("Classificado para a final.");
            else
                WriteLine("Desclassificado da competicao.");
        }

        Write("\nPressione <Enter> para encerrar... ");
        ReadLine();
    }
}
