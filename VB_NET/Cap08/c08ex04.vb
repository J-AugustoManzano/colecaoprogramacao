' c08ex04.vb

Imports System
Imports System.Console

Module Program
    Sub Main(args As String())
        Dim Nomes(5) As String
        Dim X As String

        Dim I, J As Integer

        WriteLine("CLASSIFICACAO DE NOMES (DECRESCENTE)" & vbCrLf)

        For I = 0 To 4
            Write($"Entre o {I + 1}o. nome: ")
            Nomes(I) = ReadLine()
        Next

        For I = 0 To 3
            For J = I + 1 To 4
                If (Nomes(I).CompareTo(Nomes(J)) > 0) Then
                    X = Nomes(I)
                    Nomes(I) = Nomes(J)
                    Nomes(J) = X
                End If
            Next
        Next

        WriteLine()
        For I = 0 To 4
            WriteLine($"{I + 1}o. nome: {Nomes(I)}")
        Next

        Write(vbCrLf & "Tecle <Enter> para encerrar... ")
        ReadLine()
    End Sub
End Module
