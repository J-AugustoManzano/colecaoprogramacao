' c03ex06.vb

Imports System
Imports System.Linq
Imports System.Console

Module Program
    Sub Main(args As String())
        Dim palavra As String, tamanho As Integer, copias As String
        Dim reverso As String, nvPalavra As String

        palavra = "COMPUTADOR"
        tamanho = palavra.Length
        copias = palavra & palavra & palavra
        reverso = New _
            String(palavra.ToCharArray().Reverse().ToArray())
        nvPalavra = _
            palavra.Substring(0, 6) & "O" & palavra.Substring(7)
            
        WriteLine($"Palavra ........: {palavra}")
        WriteLine()
        WriteLine($"Lado esquerdo ..: {palavra.Substring(0, 3)}")
        WriteLine($"Centro .........: {palavra.Substring(3, 4)}")
        WriteLine($"Lado direito ...: {palavra.Substring(tamanho _
            - 3)}")
        WriteLine($"Reverso ........: {reverso}")
        WriteLine($"Copias .........: {copias}")
        WriteLine($"Tira pedaco ....: {palavra.Substring(0, 7)}")
        WriteLine($"Nova palavra ...: {nvPalavra}")

        Write(vbCrLf + "Aperte <Enter> para encerrar... ")
        ReadLine()
    End Sub
End Module
   
