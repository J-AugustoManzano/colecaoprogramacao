' c03ex01.vb

Module Program
    Public Sub Main(args As String())
        Dim A As Integer, B As Integer, X As Integer

        Console.Write("Entre o 1o. valor numerico inteiro: ")
        A = Integer.Parse(Console.ReadLine())

        Console.Write("Entre o 2o. valor numerico inteiro: ")
        B = Integer.Parse(Console.ReadLine())

        X = A + B

        Console.WriteLine("Resultado = " + X.ToString())

        Console.Write(vbCrLf + "Tecle <Enter> para encerrar... ")
        Console.ReadLine()
    End Sub
End Module
