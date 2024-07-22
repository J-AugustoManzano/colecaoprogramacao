' c03ex02.vb

Imports System
Imports System.Console

Module Program
    Sub Main(args As String())
        Dim R As Double
        Dim A As Double

        Write("Entre valor do raio: ")
        R = Double.Parse(ReadLine())

        A = Math.PI * Math.Pow(R, 2)

        WriteLine("Resultado = {0:F2}", A)

        Write(vbCrLf + "Aperte <Enter> para encerrar... ")
        ReadLine()
    End Sub
End Module
