// c04ex08.cs

using System;
using static System.Console;

class Program
{
    static void Main(string[] args)
    {
        char Transp;

        WriteLine("Escolha o tipo de transporte:\n");
        WriteLine("[M] - Motocicleta");
        WriteLine("[S] - Scooter\n");

        Write("==> ");
        Transp = char.ToUpper(Convert.ToChar(ReadLine()));

        WriteLine();
        if (Transp == 'M' || Transp == 'S')
            WriteLine("Transporte valido.");
        else
            WriteLine("Transporte invalido.");

        Write("\nTecle <Enter> para encerrar... ");
        ReadLine();
    }
}
