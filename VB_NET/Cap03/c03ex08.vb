' c03ex08.vb

REM Programa exemplo para operações de duas entradas
REM com cálculo de adição e apresentação de resultado.

Imports System
Imports System.Console

Module Program
    Sub Main(args As String())
        Dim A As Integer, B As Integer, X As Integer

        ' Entrada de dados 
        Write("Entre o 1o. valor numerico inteiro: ")
        A = Integer.Parse(ReadLine())

        Write("Entre o 2o. valor numerico inteiro: ")
        B = Integer.Parse(ReadLine())

        ' Processamento de dados
        X = A + B ' Cálculo da adição

        ' Saída de dados 
        WriteLine("Resultado = " & X)

        Write(vbCrLf & "Tecle <Enter> para encerrar... ")
        ReadLine()
    End Sub
End Module
