// c04ex06.scala

import scala.io.StdIn._

object Main {
  def main(args: Array[String]): Unit = {
    var A: Float = 0.0f
    var B: Float = 0.0f
    var Opcao: Int = 0

    print("Entre o 1o. valor numérico: ")
    A = readFloat()

    print("Entre o 2o. valor numérico: ")
    B = readFloat()

    println()
    println("Escolha uma opção de menu:")
    println()
    println("[1] - Adição")
    println("[2] - Subtração")
    println("[3] - Multiplicação")
    println("[4] - Divisão")
    println()

    print("==> ")
    Opcao = readInt()
    println()

    Opcao match {
      case 1 =>
        println("Cálculo de adição")
        printf("Resultado: %.2f\n", A + B)
      case 2 =>
        println("Cálculo de subtração")
        printf("Resultado: %.2f\n", A - B)
      case 3 =>
        println("Cálculo de multiplicação")
        printf("Resultado: %.2f\n", A * B)
      case 4 =>
        println("Cálculo de divisão")
        if (B == 0) {
          println("Resultado: ERRO")
        } else {
          printf("Resultado: %.2f\n", A / B)
        }
      case _ =>
        println("Entrada inválida")
        println("Tente novamente em outro momento")
    }

    print("\nTecle <Enter> para encerrar... ")
    readLine()
  }
}
