// c08ex08.cs

using System;
using static System.Console;

class Program
{
    const int FIM = 10;
    static int[] MATRIZ = new int[FIM];
    static int INICIO = 0;

    static bool Vazia()
    {
        if (INICIO == 0)
            return true;
        else
            return false;
    }

    static bool Cheia()
    {
        if (INICIO == FIM)
            return true;
        else
            return false;
    }

    static bool Adicionar(int ELEMENTO)
    {
        if (Cheia())
        {
            return false;
        }
        else
        {
            MATRIZ[INICIO] = ELEMENTO;
            INICIO++;
            return true;
        }
    }

    static bool Retirar(out int ELEMENTO)
    {
        if (Vazia())
        {
            ELEMENTO = 0;
            return false;
        }
        else
        {
            ELEMENTO = MATRIZ[0];
            Array.Copy(MATRIZ, 1, MATRIZ, 0, INICIO - 1);
            INICIO--;
            return true;
        }
    }

    static void Entrada()
    {
        int X;
        Write("Entre com um elemento numerico: ");
        X = Convert.ToInt32(ReadLine());
        WriteLine();
        if (Adicionar(X))
            WriteLine("Elemento " + X + " inserido na posicao " + INICIO);
        else
            WriteLine("Impossivel adicionar - fila lotada.");
        WriteLine();
    }

    static void Saida()
    {
        int ELEMENTO;
        if (Retirar(out ELEMENTO))
            WriteLine("Elemento " + ELEMENTO + " retirado do inicio da fila.");
        else 
            WriteLine("Impossivel retirar elemento - fila vazia.");
        WriteLine();
    }

    static void Atual()
    {
        if (Vazia())
            WriteLine("Impossivel apresentar - fila vazia.");
        else
            WriteLine(MATRIZ[0] + " - primeiro elemento da fila.");
        WriteLine();
    }

    static void Exibicao()
    {
        if (Vazia())
            WriteLine("Impossivel apresentar - fila vazia.");
        else
            for (int I = 0; I < INICIO; I++)
                WriteLine("Posicao: {0,2} = {1}", I + 1, MATRIZ[I]);
        WriteLine();
    }

    static void Criar()
    {
        Array.Clear(MATRIZ, 0, MATRIZ.Length);
        INICIO = 0;
    }

    static void Main(string[] args)
    {
        Criar();
        int OPCAO = 0;
        while (OPCAO != 6)
        {
            WriteLine("PROGRAMA: FILA\n");
            WriteLine("[1] - Entrada");
            WriteLine("[2] - Saida");
            WriteLine("[3] - Apresentar 1o. da fila");
            WriteLine("[4] - Apresentar a fila");
            WriteLine("[5] - Nova fila");
            WriteLine("[6] - Sair\n");
            Write("Escolha uma opcao: ");
            OPCAO = int.Parse(ReadLine());
            WriteLine();
            if (OPCAO != 6)
                switch (OPCAO)
                {
                    case 1: Entrada(); break;
                    case 2: Saida(); break;
                    case 3: Atual(); break;
                    case 4: Exibicao(); break;
                    case 5: Criar(); break;
                    default:
                        WriteLine("Opcao invalida. Tente novamente.\n");
                        break;
                }
        }
    }
}
