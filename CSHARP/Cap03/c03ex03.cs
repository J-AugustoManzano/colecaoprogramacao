// c03ex03.cs

using System;
using static System.Console;

public class Program
{
    public static void Main(string[] args)
    {
        double HT, VH, PD, SB, TD, SL;

        Write("Entre quantidade de horas trabalhadas ..: ");
        HT = double.Parse(ReadLine());

        Write("Entre valor do salario-hora ............: ");
        VH = double.Parse(ReadLine());

        Write("Entre valor do percentual de desconto ..: ");
        PD = double.Parse(ReadLine());

        SB = HT * VH;
        TD = (PD / 100) * SB;
        SL = SB - TD;

        WriteLine("\nSalario Bruto ....: {0:F2}", SB);
        WriteLine("Salario Liquido ..: {0:F2}", SL);

        Write("\nAperte <Enter> para encerrar... ");
        ReadLine();
    }
}
