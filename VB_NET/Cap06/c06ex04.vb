' c06ex04.vb

Imports System
Imports System.Console
Imports System.Collections.Generic

Module Program
    Sub Main(args As String())
        Dim N As Integer
        Dim A As New List(Of String)()

        Write("Entre a quantidade de elementos da matriz: ")
        N = Integer.Parse(ReadLine())
        WriteLine()

        For I As Integer = 0 To N - 1
            Write($"Entre o {I + 1}o. nome: ")
            A.Add(ReadLine())
        Next

        WriteLine()
        WriteLine("Foram fornecidos os nomes:")
        WriteLine()

        For I As Integer = 0 To N - 1
            WriteLine($"Nome {I + 1} = {A(I)}")
        Next

        Write(vbCrLf & "Tecle <Enter> para encerrar... ")
        ReadLine()
    End Sub
End Module   
