' c06ex03.vb

Imports System
Imports System.Console

Class Aluno
    Public Nome As String
    Public Turma As Char
    Public Sala As Integer
    Public Notas(3) As Single
End Class

Module Program
    Sub Main(args As String())
        Dim ALUNO(7) As Aluno
        Dim I, J As Integer

        WriteLine("Escola de Computacao XPTO")
        WriteLine("Cadastro Escolar de Aluno")
        WriteLine()

        For I = 0 To 7
            WriteLine($"Aluno: {I + 1}")
            WriteLine()

            ALUNO(I) = New Aluno()

            Write("Nome ..............: ")
            ALUNO(I).Nome = ReadLine()

            Write("Turma .............: ")
            ALUNO(I).Turma = Char.Parse(ReadLine())

            Write("Sala ..............: ")
            ALUNO(I).Sala = Integer.Parse(ReadLine())

            WriteLine()

            For J = 0 To 3
                Write($"Entre a {J + 1}a. nota ..: ")
                ALUNO(I).Notas(J) = Single.Parse(ReadLine())
            Next
            WriteLine()
        Next

        WriteLine("Escola de Computacao XPTO")
        WriteLine("Cadastro Escolar de Aluno")
        WriteLine()
        WriteLine("DADOS DOS ALUNOS")

        Write("Aluno ")
        Write("Nome                           ")
        Write("Sala ")
        Write("Turma ")
        Write("Nota1 ")
        Write("Nota2 ")
        Write("Nota3 ")
        WriteLine("Nota4")

        Write("----- ")
        Write("------------------------------ ")
        Write("---- ")
        Write("----- ")
        Write("----- ")
        Write("----- ")
        Write("----- ")
        WriteLine("-----")

        For I = 0 To 7
            Write("{0,5} ", I + 1)
            Write("{0,-30} ", ALUNO(I).Nome)
            Write("{0,4} ", ALUNO(I).Sala)
            Write("{0,5} ", ALUNO(I).Turma)
            For J = 0 To 3
                Write("{0,5:F1} ", ALUNO(I).Notas(J))
            Next
            WriteLine()
        Next

        WriteLine()
        Write("Tecle <Enter> para encerrar... ")
        ReadLine()
    End Sub
End Module
