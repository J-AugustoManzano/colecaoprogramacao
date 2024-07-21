// c08ex05.cs

using System;
using static System.Console;

class Program
{
    static void Main(string[] args)
    {
        string[] NOME = new string[10];

        string RESP = "SIM";
        string PESQ;
        string RESPOSTA;
        int I;
        bool ACHA;

        WriteLine("PESQUISA SEQUENCIAL DE NOMES\n");

        for (I = 0; I <= 9; ++I)
        {
            Write($"Entre o {I + 1,2}o. nome: ");
            NOME[I] = ReadLine();
        }

        while (RESP == "SIM")
        {
            Write("\nEntre o nome a ser pesquisado: ");
            PESQ = ReadLine();
            I = 0;
            ACHA = false;

            while (I <= 9 && ACHA == false)
            {
                if (PESQ == NOME[I])
                    ACHA = true;
                else
                    ++I;
            }

            WriteLine();
            if (ACHA == true)
                WriteLine($"{PESQ} foi localizado na posicao {I + 1}");
            else
                WriteLine($"{PESQ} nao foi localizado");

            do
            {
                Write("\nDeseja continuar? (SIM/NAO): ");
                RESPOSTA = ReadLine();
                RESP = RESPOSTA.ToUpper();
                if (RESP != "SIM" && RESP != "NAO")
                    WriteLine("Informe apenas SIM ou NAO.");
            } while (RESP != "SIM" && RESP != "NAO");
        }

        Write("\nTecle <Enter> para encerrar... ");
        ReadLine();
    }
}
