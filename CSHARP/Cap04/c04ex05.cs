// c04ex05.cs

using System;
using static System.Console;

class Program
{
    static void Main(string[] args)
    {
        int Mes;

        Write("Entre com um numero equivalente a um mes: ");
        Mes = int.Parse(ReadLine());

        switch (Mes)
        {
            case 1:
                WriteLine("Janeiro");
                break;
            case 2:
                WriteLine("Fevereiro");
                break;
            case 3:
                WriteLine("Marco");
                break;
            case 4:
                WriteLine("Abril");
                break;
            case 5:
                WriteLine("Maio");
                break;
            case 6:
                WriteLine("Junho");
                break;
            case 7:
                WriteLine("Julho");
                break;
            case 8:
                WriteLine("Agosto");
                break;
            case 9:
                WriteLine("Setembro");
                break;
            case 10:
                WriteLine("Outubro");
                break;
            case 11:
                WriteLine("Novembro");
                break;
            case 12:
                WriteLine("Dezembro");
                break;
            default:
                WriteLine("Mes invalido");
                break;
        }

        Write("\nAperte <Enter> para encerrar... ");
        ReadLine();
    }
}
