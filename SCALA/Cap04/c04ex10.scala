// c04ex10.scala

import scala.io.StdIn._

object Main {
  def main(args: Array[String]): Unit = {
    var A: Int = 0
    var B: Int = 0
    var X: Int = 0
    var C: Int = 0

    print("Entre valor para a variavel <A>: ")
    A = readInt()

    print("Entre valor para a variavel <B>: ")
    B = readInt()

    print("Entre valor para a variavel <X>: ")
    X = readInt()

    if (!(X > 5)) {
      C = A - B
    } else {
      C = A + B
    }

    println("\nResultado = " + C)

    print("\nPressione <Enter> para encerrar... ")
    readLine()
  }
}
