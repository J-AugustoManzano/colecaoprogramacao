' c08ex05.vb

Imports System
Imports System.Console

Module Program
    Sub Main(args As String())
        Dim NOME(10) As String

        Dim RESP As String = "SIM"
        Dim PESQ As String
        Dim RESPOSTA As String
        Dim I As Integer
        Dim ACHA As Boolean

        WriteLine("PESQUISA SEQUENCIAL DE NOMES" & vbCrLf)

        For I = 0 To 9
            Write($"Entre o {I + 1,2}o. nome: ")
            NOME(I) = ReadLine()
        Next

        While (RESP = "SIM")
            Write(vbCrLf & "Entre o nome a ser pesquisado: ")
            PESQ = ReadLine()
            I = 0
            ACHA = False

            While (I <= 9 And ACHA = False)
                If PESQ = NOME(I) Then
                    ACHA = True
                Else
                    I += 1
                End If
            End While

            WriteLine()
            If (ACHA = True) Then
                WriteLine($"{PESQ} foi localizado na posicao {I + 1}")
            Else
                WriteLine($"{PESQ} nao foi localizado")
            End If

            Do
                Write(vbCrLf & "Deseja continuar? (SIM/NAO): ")
                RESPOSTA = ReadLine()
                RESP = RESPOSTA.ToUpper()
                If (RESP <> "SIM" And RESP <> "NAO") Then
                    WriteLine("Informe apenas SIM ou NAO.")
                End If
            Loop While (RESP <> "SIM" And RESP <> "NAO")
        End While

        Write(vbCrLf & "Tecle <Enter> para encerrar... ")
        ReadLine()
    End Sub
End Module
