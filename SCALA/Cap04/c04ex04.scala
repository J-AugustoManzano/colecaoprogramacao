// c04ex04.scala

import scala.io.StdIn._

object Main {
  def main(args: Array[String]): Unit = {
    var N1, N2, N3, N4, NE, MD1, MD2: Float = 0.0f

    print("Entre a 1a. nota .......: ")
    N1 = readFloat()

    print("Entre a 2a. nota .......: ")
    N2 = readFloat()

    print("Entre a 3a. nota .......: ")
    N3 = readFloat()

    print("Entre a 4a. nota .......: ")
    N4 = readFloat()

    MD1 = (N1 + N2 + N3 + N4) / 4

    println()
    if (MD1 >= 7) {
      println("Aprovado")
      printf("Media: %.2f\n", MD1)
    } else {
      print("Entre a nota de exame ..: ")
      NE = readFloat()

      MD2 = (MD1 + NE) / 2

      println()
      if (MD2 >= 5) {
        println("Aprovado em exame")
      } else {
        println("Reprovado")
      }
      printf("Media: %.2f\n", MD2)
    }

    print("\nTecle <Enter> para encerrar... ")
    readLine()
  }
}
