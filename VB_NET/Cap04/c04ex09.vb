' c04ex09.vb

Imports System
Imports System.Console

Module Program
    Sub Main(args As String())
        Dim p1 As Integer
        Dim p2 As Integer

        WriteLine("Classificacao esportiva")
        WriteLine()
        WriteLine("Entre '1' se atleta pontuou na 1a prova")
        WriteLine("Entre '1' se atleta pontuou na 2a prova")
        WriteLine("Qualquer outro valor se nao pontuou nas pro-vas")
       WriteLine()

        Write("Prova 1: ")
        p1 = Integer.Parse(ReadLine())

        Write("Prova 2: ")
        p2 = Integer.Parse(ReadLine())

        If (p1 = 1 Xor p2 = 1) Then
            WriteLine("Atleta participa da terceira prova.")
        Else
            WriteLine("Atleta nao participa da terceira prova.")
            If (p1 = 1 And p2 = 1) Then
                WriteLine("Classificado para a final.")
            Else
                WriteLine("Desclassificado da competicao.")
            End If
        End If

        Write(vbCrLf & "Pressione <Enter> para encerrar... ")
        ReadLine()
    End Sub
End Module
