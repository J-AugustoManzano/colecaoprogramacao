// c05ex11.scala

import scala.io.StdIn._

object Main {
  def main(args: Array[String]): Unit = {
    var I: Int = 1
    var N: Int = 0
    var R: Int = 0

    for (I <- 1 to 5 by 1) {
      print("Entre um valor numerico: ")
      N = readInt()

      R = N * 3

      println("Resultado = " + R + "\n")
    }

    print("\nTecle <Enter> para encerrar... ")
    readLine()
  }
}
