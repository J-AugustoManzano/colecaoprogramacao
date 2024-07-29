// c05ex09.scala

import scala.io.StdIn._

object Main {
  def main(args: Array[String]): Unit = {
    var I: Int = 1
    var N, R: Int = 0
    var saida: Boolean = true

    do {
      print("Entre um valor numerico: ")
      N = readInt()

      R = N * 3

      println("Resultado = " + R + "\n")

      if (I > 4) {saida = false}
      I += 1
    } while (saida == true)

    print("\nTecle <Enter> para encerrar... ")
    readLine()
  }
}
