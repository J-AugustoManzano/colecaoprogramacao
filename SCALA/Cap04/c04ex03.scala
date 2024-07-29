// c04ex03.scala

import scala.io.StdIn._

object Main {
  def main(args: Array[String]): Unit = {
    var A, B, X, R: Int = 0

    print("Entre o 1o. valor numerico: ")
    A = readInt()

    print("Entre o 2o. valor numerico: ")
    B = readInt()

    X = A + B

    if (X >= 10) {
      R = X + 5
    } else {
      R = X - 7
    }

    println("Resultado = " + R)

    print("\nTecle <Enter> para encerrar... ")
    readLine()
  }
}
