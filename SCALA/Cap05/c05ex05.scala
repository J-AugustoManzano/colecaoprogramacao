// c05ex05.scala

import scala.io.StdIn._

object Main {
  def main(args: Array[String]): Unit = {
    var I: Int = 1
    var N, R: Int = 0

    do {
      print("Entre um valor numerico: ")
      N = readInt()

      R = N * 3

      println("Resultado = " + R + "\n")

      I += 1
    } while (!(I > 5))

    print("\nTecle <Enter> para encerrar... ")
    readLine()
  }
}
