' c06ex02.vb

Imports System
Imports System.Console

Module Program
    Sub Main(args As String())
        Dim NOTAS(8, 4) As Double
        Dim I, J As Integer

        For I = 0 To 7
            WriteLine("Entre as notas do aluno {0}:", I + 1)
            For J = 0 To 3
                Write("Nota {0}: ", J + 1)
                NOTAS(I, J) = Double.Parse(ReadLine())
            Next
            WriteLine()
        Next

        WriteLine(vbCrLf & "RELATORIO DE NOTAS" & vbCrLf)
        WriteLine("Aluno Nota1 Nota2 Nota3 Nota4")
        WriteLine("----- ----- ----- ----- -----")
        For I = 0 To 7
            Write("{0,5}", I + 1)
            For J = 0 To 3
                Write("{0,6:F1}", NOTAS(I, J))
            Next
            WriteLine()
        Next

        Write(vbCrLf & "Tecle <Enter> para encerrar... ")
        ReadLine()
    End Sub
End Module
