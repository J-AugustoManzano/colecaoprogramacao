' c04ex05.vb

Imports System
Imports System.Console

Module Program
    Sub Main(args As String())
        Dim Mes As Integer

        Write("Entre com um numero equivalente a um mes: ")
        Mes = Integer.Parse(ReadLine())

        Select Case (Mes)
            Case 1
                WriteLine("Janeiro")
            Case 2
                WriteLine("Fevereiro")
            Case 3
                WriteLine("Marco")
            Case 4
                WriteLine("Abril")
            Case 5
                WriteLine("Maio")
            Case 6
                WriteLine("Junho")
            Case 7
                WriteLine("Julho")
            Case 8
                WriteLine("Agosto")
            Case 9
                WriteLine("Setembro")
            Case 10
                WriteLine("Outubro")
            Case 11
                WriteLine("Novembro")
            Case 12
                WriteLine("Dezembro")
            Case Else
                WriteLine("Mes invalido")
        End Select

        Write(vbCrLf & "Aperte <Enter> para encerrar... ")
        ReadLine()
    End Sub
End Module
