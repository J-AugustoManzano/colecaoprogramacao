' c08ex02.vb

Imports System
Imports System.Text.RegularExpressions
Imports System.Console

Module Program
    Function ValidaNumero(ByVal entrada As String) As Boolean
        Return Regex.IsMatch(entrada, "^[+-]?(\d+|\d+\.\d+)$")
    End Function

    Sub Main(args As String())
        Dim numero As String = ""

        While True
            Write("Entre um valor numerico inteiro: ")
            numero = ReadLine()
            WriteLine()

            If (String.IsNullOrEmpty(numero)) Then
                WriteLine("Erro: Tecla <Enter> acionada acidentalmente.")
                WriteLine()
                Continue While
            End If

            If (Not ValidaNumero(numero)) Then
                WriteLine("Erro: Entre um valor numerico.")
                WriteLine()
                Continue While
            End If

            Exit While
        End While

        WriteLine($"Entrada valida fornecida: {numero}")

        WriteLine()
        Write("Tecle <Enter> para encerrar... ")
        ReadLine()
    End Sub
End Module
