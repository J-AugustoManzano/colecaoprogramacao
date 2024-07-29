// c08ex07.cs

using System;
using static System.Console;

class Program
{
    const int LIMITE = 10;
    static int[] MATRIZ = new int[LIMITE];
    static int TOPO = 0;

    static bool Vazia()
    {
        if (TOPO == 0)
            return true;
        else
            return false;
    }

    static bool Cheia()
    {
        if (TOPO == LIMITE)
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
            MATRIZ[TOPO] = ELEMENTO;
            TOPO++;
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
            TOPO--;
            ELEMENTO = MATRIZ[TOPO];
            MATRIZ[TOPO] = 0;
            return true;
        }
    }

    static void Empilhar()
    {
        int X;
        Write("Entre com um elemento numerico: ");
        X = Convert.ToInt32(ReadLine());
        WriteLine();
        if (Adicionar(X))
            WriteLine("Elemento " + X + " inserido na posicao " + TOPO);
        else
            WriteLine("Impossivel adicionar - pilha cheia.");
        WriteLine();
    }

    static void Desempilhar()
    {
        int ELEMENTO;
        if (Retirar(out ELEMENTO))
            WriteLine("Elemento " + ELEMENTO + " retirado do topo da pilha.");
        else
           WriteLine("Impossivel retirar - pilha vazia.");
        WriteLine();
    }

    static void Mostrar()
    {
        if (Vazia())
            WriteLine("Impossivel apresentar - pilha vazia.");
        else
            for (int I = TOPO - 1; I >= 0; I--)
                WriteLine("Posicao: {0,2} = {1}", I + 1, MATRIZ[I]);
        WriteLine();
    }

    static void Criar()
    {
        TOPO = 0;
        Array.Clear(MATRIZ, 0, MATRIZ.Length);
    }

    static void Main(string[] args)
    {
        Criar();
        int Opcao = 0;
        while (Opcao != 5)
        {
            WriteLine("PROGRAMA: PILHA\n");
            WriteLine("[1] - Empilhar");
            WriteLine("[2] - Desempilhar");
            WriteLine("[3] - Mostrar");
            WriteLine("[4] - Criar pilha");
            WriteLine("[5] - Sair\n");
            Write("Escolha uma opcao: ");
            Opcao = int.Parse(ReadLine());
            WriteLine();
            if (Opcao != 5)
                switch (Opcao)
                {
                    case 1: Empilhar(); break;
                    case 2: Desempilhar(); break;
                    case 3: Mostrar(); break;
                    case 4: Criar(); break;
                    default:
                        WriteLine("Opcao invalida. Tente novamente.\n");
                        break;
                }
        }
    }
}
