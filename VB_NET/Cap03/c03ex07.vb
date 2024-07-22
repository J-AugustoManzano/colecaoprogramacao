' c03ex07.vb

Imports System
Imports System.Console

Module Program
    Sub Main(args As String())
        Dim frase As String = "Aprendendo VB.NET com o Professor Manzano"
        Dim palavras As String() = frase.Split(" "c)
        Dim busca As String = "VB.NET"
        Dim pos As Integer

        WriteLine("Frase ......: " + frase)
        Write("              ")
        WriteLine("-----------------------------------------")
        Write("              ")
        WriteLine("00000000011111111112222222222333333333334")
        Write("              ")
        WriteLine("01234567890123456789012345678901234567890")
        WriteLine()

        WriteLine("Tamanho ....: " & frase.Length & " caracteres")
        WriteLine()

        For i As Integer = 0 To 3
            Write("Palavra " & (i + 1) & " .............: ")
            WriteLine(palavras(i))
        Next

        WriteLine()
        WriteLine("Letra 1 da Palavra 1 ..: " & palavras(0)(0))
        WriteLine("Letra 2 da Palavra 1 ..: " & palavras(0)(1))
        WriteLine("Letra 3 da Palavra 1 ..: " & palavras(0)(2))
        WriteLine("Letra 4 da Palavra 1 ..: " & palavras(0)(3))
        WriteLine()

        pos = frase.IndexOf(busca) + 1
        WriteLine("A palavra 'VB.NET' na posicao: " & pos)

        Write(vbCrLf + "Tecle <Enter> para encerrar... ")
        ReadLine()
    End Sub
End Module
