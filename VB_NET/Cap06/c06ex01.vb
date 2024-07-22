' c06ex01.vb

Imports System
Imports System.Console

Module Program
    Sub Main(args As String())
        Dim MD(8) As Double
        Dim SOMA As Double = 0.0
        Dim MEDIA As Double

        For I As Integer = 0 To 7
            Write("Entre a media do aluno {0}: ", I + 1)
            MD(I) = Double.Parse(ReadLine())
            SOMA += MD(I)
        Next

        MEDIA = SOMA / 8

        WriteLine()
        WriteLine("Media geral: {0:F2}", MEDIA)

        Write(vbCrLf & "Tecle <Enter> para encerrar... ")
        ReadLine()
    End Sub
End Module
