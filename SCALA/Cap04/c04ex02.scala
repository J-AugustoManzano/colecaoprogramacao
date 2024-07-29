// c04ex02.scala

import scala.io.StdIn._

object Main {
  def main(args: Array[String]): Unit = {
    var A, B, X: Int = 0

    print("Entre o 1o. valor numerico: ")
    A = readInt()

    print("Entre o 2o. valor numerico: ")
    B = readInt()

    if (A > B) {
      X = A
      A = B
      B = X
    }

    println("Os valores sao: " + A + " e " + B + ".")

    print("\nTecle <Enter> para encerrar... ")
    readLine()
  }
}
