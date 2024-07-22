' c03ex03.vb

Imports System
Imports System.Console

Module Program
    Sub Main(args As String())
        Dim HT As Double, VH As Double, PD As Double
        Dim SB As Double, TD As Double, SL As Double

        Write("Entre quantidade de horas trabalhadas ..: ")
        HT = Double.Parse(Console.ReadLine())

        Write("Entre valor do salario-hora ............: ")
        VH = Double.Parse(Console.ReadLine())

        Write("Entre valor do percentual de desconto ..: ")
        PD = Double.Parse(Console.ReadLine())

        SB = HT * VH
        TD = (PD / 100) * SB
        SL = SB - TD

        Console.WriteLine(vbCrLf + "Salario Bruto ....: {0:F2}", SB)
        Console.WriteLine("Salario Liquido ..: {0:F2}", SL)

        Write(vbCrLf + "Aperte <Enter> para encerrar... ")
        Console.ReadLine()
    End Sub
End Module
