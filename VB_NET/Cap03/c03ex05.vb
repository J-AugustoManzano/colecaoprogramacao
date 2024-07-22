' c03ex05.vb

Imports System

Module Program
    Sub Main(args As String())
        Dim nome As String

        Console.Write("Entre seu nome: ")
        nome = Console.ReadLine()

        Console.WriteLine($"Ola, {nome}! Bem-vindo ao estudo de VB.NET.")

        Console.Write(vbCrLf + "Aperte <Enter> para encerrar... ")
        Console.ReadLine()
    End Sub
End Module 
