' c08ex06.vb

Imports System
Imports System.Console

Module Program
    Sub Main(args As String())
        Dim NUMERO(10) As Integer
        Dim I As Integer, J As Integer, X As Integer
        Dim COMECO As Integer, FINAL As Integer, MEIO As Integer
        Dim ACHA As Boolean, PESQ As Integer

        Dim RESP, RESPOSTA As String

        WriteLine("PESQUISA BINARIA DE NUMEROS" & vbCrLf)

        For I = 0 To 9
            Write($"Entre o {I + 1,2}o. numero: ")
            NUMERO(I) = Integer.Parse(ReadLine())
        Next

        For I = 0 To 8
            For J = I + 1 To 9
                If (NUMERO(I) > NUMERO(J)) Then
                    X = NUMERO(I)
                    NUMERO(I) = NUMERO(J)
                    NUMERO(J) = X
                End If
            Next
        Next

        RESP = "SIM"
        While (RESP = "SIM")
            Write(vbCrLf & "Entre o numero a ser pesquisado: ")
            PESQ = Integer.Parse(ReadLine())

            COMECO = 0
            FINAL = 9
            ACHA = False

            While (COMECO <= FINAL And ACHA = False)
                MEIO = (COMECO + FINAL) \ 2
                If (PESQ = NUMERO(MEIO)) Then
                    ACHA = True
                ElseIf (PESQ < NUMERO(MEIO)) Then
                    FINAL = MEIO - 1
                Else
                    COMECO = MEIO + 1
                End If
            End While

            WriteLine()
            If (ACHA = True) Then
                WriteLine($"{PESQ} foi localizado na posicao {MEIO + 1}")
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
            Loop While(RESP <> "SIM" And RESP <> "NAO")
        End While

        Write(vbCrLf & "Tecle <Enter> para encerrar... ")
        ReadLine()
    End Sub
End Module
