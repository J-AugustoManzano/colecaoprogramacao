// c06ex03.cs

using System;
using static System.Console;

class Aluno
{
    public string Nome;
    public char Turma;
    public int Sala;
    public float[] Notas = new float[4];
}

class Program
{
    static void Main(string[] args)
    {
        Aluno[] ALUNO = new Aluno[8];
        int I, J;

        WriteLine("Escola de Computacao XPTO");
        WriteLine("Cadastro Escolar de Aluno");
        WriteLine();

        for (I = 0; I <= 7; ++I)
        {
            WriteLine($"Aluno: {I + 1}");
            WriteLine();

            ALUNO[I] = new Aluno();

            Write("Nome ..............: ");
            ALUNO[I].Nome = ReadLine();

            Write("Turma .............: ");
            ALUNO[I].Turma = char.Parse(ReadLine());

            Write("Sala ..............: ");
            ALUNO[I].Sala = int.Parse(ReadLine());

            WriteLine();

            for (J = 0; J <= 3; ++J)
            {
                Write($"Entre a {J + 1}a. nota ..: ");
                ALUNO[I].Notas[J] = float.Parse(ReadLine());
            }

            WriteLine();
        }

        WriteLine("Escola de Computacao XPTO");
        WriteLine("Cadastro Escolar de Aluno");
        WriteLine();
        WriteLine("DADOS DOS ALUNOS");

        Write("Aluno ");
        Write("Nome                           ");
        Write("Sala ");
        Write("Turma ");
        Write("Nota1 ");
        Write("Nota2 ");
        Write("Nota3 ");
        WriteLine("Nota4");

        Write("----- ");
        Write("------------------------------ ");
        Write("---- ");
        Write("----- ");
        Write("----- ");
        Write("----- ");
        Write("----- ");
        WriteLine("-----");

        for (I = 0; I <= 7; ++I)
        {
            Write("{0,5} ", I + 1);
            Write("{0,-30} ", ALUNO[I].Nome);
            Write("{0,4} ", ALUNO[I].Sala);
            Write("{0,5} ", ALUNO[I].Turma);
            for (J = 0; J <= 3; ++J)
                Write("{0,5:F1} ", ALUNO[I].Notas[J]);
            WriteLine();
        }

        WriteLine();
        Write("Tecle <Enter> para encerrar... ");
        ReadLine();
    }
}
