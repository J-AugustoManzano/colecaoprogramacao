// c08ex06.cs

using System;
using static System.Console;

class Program
{
    static void Main(string[] args)
    {
        int[] NUMERO = new int[10];
        int I, J, X, PESQ, COMECO, FINAL, MEIO = 0;
        bool ACHA;

        string RESP, RESPOSTA;

        WriteLine("PESQUISA BINARIA DE NUMEROS\n");

        for (I = 0; I <= 9; ++I)
        {
            Write($"Entre o {I + 1,2}o. numero: ");
            NUMERO[I] = int.Parse(ReadLine());
        }

        for (I = 0; I <= 8; ++I)
            for (J = I + 1; J <= 9; ++J)
                if (NUMERO[I] > NUMERO[J])
                {
                    X = NUMERO[I];
                    NUMERO[I] = NUMERO[J];
                    NUMERO[J] = X;
                }

        RESP = "SIM";
        while (RESP == "SIM")
        {
            Write("\nEntre o numero a ser pesquisado: ");
            PESQ = int.Parse(ReadLine());

            COMECO = 0;
            FINAL = 9;
            ACHA = false;

            while (COMECO <= FINAL && ACHA == false)
            {
                MEIO = (COMECO + FINAL) / 2;
                if (PESQ == NUMERO[MEIO])
                    ACHA = true;
                else if (PESQ < NUMERO[MEIO])
                    FINAL = MEIO - 1;
                else
                    COMECO = MEIO + 1;
            }

            WriteLine();
            if (ACHA == true)
                WriteLine($"{PESQ} foi localizado na posicao {MEIO + 1}");
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
