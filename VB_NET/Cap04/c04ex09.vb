' c04ex09.vb

Imports System
Imports System.Console

Module Program
    Sub Main(args As String())
        Dim prova1 As Integer
        Dim prova2 As Integer

        WriteLine("Classificacao esportiva")
        WriteLine()
        WriteLine("Entre '1' se atleta pontuou na 1a prova")
        WriteLine("Entre '1' se atleta pontuou na 2a prova")
        WriteLine("Qualquer outro valor se nao pontuou nas provas")
        WriteLine()

        Write("Prova 1: ")
        prova1 = Integer.Parse(ReadLine())

        Write("Prova 2: ")
        prova2 = Integer.Parse(ReadLine())

        If (prova1 = 1 Xor prova2 = 1) Then
            WriteLine("Atleta participa da terceira prova.")
        Else
            WriteLine("Atleta nao participa da terceira prova.")
            If (prova1 = 1 And prova2 = 1) Then
                WriteLine("Classificado para a final.")
            Else
                WriteLine("Desclassificado da competicao.")
            End If
        End If

        Write(vbCrLf & "Pressione <Enter> para encerrar... ")
        ReadLine()
    End Sub
End Module
