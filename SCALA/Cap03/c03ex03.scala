// c03ex03.scala

import scala.io.StdIn.{readDouble, readLine}

object Main {
  def main(args: Array[String]): Unit = {
    var HT, VH, PD, SB, TD, SL: Double = 0.0

    print("Entre quantidade de horas trabalhadas ..: ")
    HT = readDouble()

    print("Entre valor do salario-hora ............: ")
    VH = readDouble()

    print("Entre valor do percentual de desconto ..: ")
    PD = readDouble()

    SB = HT * VH
    TD = (PD / 100) * SB
    SL = SB - TD

    printf("\nSalario Bruto ....: %.2f\n", SB)
    printf("Salario Liquido ..: %.2f\n", SL)

    print("\nTecle <Enter> para encerrar... ")
    readLine()
  }
}
