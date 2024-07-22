' c04ex08.vb

Imports System
Imports System.Console

Module Program
    Sub Main(args As String())
        Dim Transp As Char

        WriteLine("Escolha o tipo de transporte:")
        WriteLine()
        WriteLine("[M] - Motocicleta")
        WriteLine("[S] - Scooter")
        WriteLine()

        Write("==> ")
        Transp = Char.ToUpper(Convert.ToChar(ReadLine()))

        WriteLine()
        If (Transp = "M"c Or Transp = "S"c) Then
            WriteLine("Transporte valido.")
        Else
            WriteLine("Transporte invalido.")
        End If

        Write(vbCrLf & "Tecle <Enter> para encerrar... ")
        ReadLine()
    End Sub
End Module
