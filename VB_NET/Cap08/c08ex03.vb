' c08ex03.vb

Imports System
Imports System.Console

Module Program
    Sub Main(args As String())
        Dim Numeros(5) As Integer
        Dim I, J, X As Integer

        WriteLine("CLASSIFICACAO DE NUMEROS (CRESCENTE)" & vbCrLf)

        For I = 0 To 4
            Write($"Entre o {I + 1}o. numero: ")
            Numeros(I) = Integer.Parse(ReadLine())
        Next

        For I = 0 To 3
            For J = I + 1 To 4
                If (Numeros(I) > Numeros(J)) Then
                    X = Numeros(I)
                    Numeros(I) = Numeros(J)
                    Numeros(J) = X
                End If
            Next
        Next

        WriteLine()
        For I = 0 To 4
            WriteLine($"{I + 1}o. numero: {Numeros(I)}")
        Next

        Write(vbCrLf & "Tecle <Enter> para encerrar... ")
        ReadLine()
    End Sub
End Module
