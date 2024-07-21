// c03ex05.cs

using System;

public class Program
{
    public static void Main(string[] args)
    {
        string nome;

        Console.Write("Entre seu nome: ");
        nome = Console.ReadLine();

        Console.WriteLine($"Ola, {nome}! Bem-vindo ao estudo de C#.");

        Console.Write("\nAperte <Enter> para encerrar... ");
        Console.ReadLine();
    }
}
