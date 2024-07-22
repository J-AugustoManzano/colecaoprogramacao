' c04ex04.vb

Imports System
Imports System.Console

Module Program
    Sub Main(args As String())
        Dim N1 As Single, N2 As Single, N3 As Single, N4 As Single
        Dim NE As Single, MD1 As Single, MD2 As Single

        Write("Entre a 1a. nota .......: ")
        N1 = Single.Parse(ReadLine())

        Write("Entre a 2a. nota .......: ")
        N2 = Single.Parse(ReadLine())

        Write("Entre a 3a. nota .......: ")
        N3 = Single.Parse(ReadLine())

        Write("Entre a 4a. nota .......: ")
        N4 = Single.Parse(ReadLine())

        MD1 = (N1 + N2 + N3 + N4) / 4

        WriteLine()
        If MD1 >= 7 Then
            WriteLine("Aprovado")
            WriteLine("Media: {0:F2}", MD1)
        Else
            Write("Entre a nota de exame ..: ")
            NE = Single.Parse(ReadLine())

            MD2 = (MD1 + NE) / 2

            WriteLine()
            If MD2 >= 5 Then
                WriteLine("Aprovado em exame")
            Else
                WriteLine("Reprovado")
            End If
            WriteLine("Media: {0:F2}", MD2)
        End If

        Write(vbCrLf & "Aperte <Enter> para encerrar... ")
        ReadLine()
    End Sub
End Module
