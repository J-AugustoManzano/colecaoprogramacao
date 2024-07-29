// c04ex01.scala

import scala.io.StdIn._

object Main {
  def main(args: Array[String]): Unit = {
    var A, B, X: Int = 0

    print("Entre o 1o. valor numerico: ")
    A = readInt()

    print("Entre o 2o. valor numerico: ")
    B = readInt()

    X = A + B

    if (X > 10) {
      println("Resultado = " + X)
    }

    print("\nTecle <Enter> para encerrar... ")
    readLine()
  }
}
